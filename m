Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED013AB9BFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 14:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9399361033;
	Fri, 16 May 2025 12:27:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJiWD7q4-zhs; Fri, 16 May 2025 12:27:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F3E661120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747398439;
	bh=wvu5lInE3skClcJMhde9eoiRRYd2qoCBgpJrmNgP5Z8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vAgrctV2jwwhpR7hkAuYNr7GEGLMity/6PLkY+sC1/XWncBioGQt6LPg+U/wOfcO9
	 VGuTithsdIQ9YzkiU7bCseM7vXXq4FQp95L2MVHJ8Qg2BSUzt5rjjvmCRCEv8gEVAr
	 lAQabAzGgAE2vEQjq7083N7fv9JiqJ1xBxoGlqbjv9lIeXSMZa4oA161S/g+xkg4js
	 HqjFmamIfVvqcH9T8ZoEJ0H8qT40O9MU2y30wVdzGvnsfNwLq3v0e+R22q2AOo/hrY
	 UqK53PQaXTrsyg/rSR6r1wZXDfZO9x8uk8xTIjoEu2jzQ6rVDxCK2DFLvJBgJdFEZm
	 mi6UOCoHOiJEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F3E661120;
	Fri, 16 May 2025 12:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FF44185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45AF860BB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:27:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6do21hIE-mki for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 12:27:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AEC6960A69
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEC6960A69
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEC6960A69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:27:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DCC1C629F7;
 Fri, 16 May 2025 12:27:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD500C4CEE4;
 Fri, 16 May 2025 12:27:13 +0000 (UTC)
Date: Fri, 16 May 2025 13:27:11 +0100
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20250516122711.GD3339421@horms.kernel.org>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-6-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513101132.328235-6-vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747398435;
 bh=XG/Rv0GxCqWfPJpWGHIom+iVku0hii+lE4hwd7p6DXA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pVY9Ob4r0pI4KeT4eN1KS8ge5DbBBs49PcON3OnZmswbKFSGgrSLkZdc01oHlMbv4
 IbDoZ5onhFVYHmiPDIef9WZDgKP3O7NfZOFqRtJc1HqHiEAdAo0I14aoMwW36yElD7
 3HV1PBFvQIfysFPVlkCOZEDPihMvv3I6uzRcCXlDJlcTPFttlh/HgBc3era/UGudEH
 IhsHJlM0JTOVXmkmQCr5opPgATJb5e1u1az6m3Vipg2LfN6SUTHlee5o6orfLshCHH
 UhvUP3atCDU9hif8fCBjO2rGd2u1WQwOSi74R+VmRU8P+e80Y5a/7peFWAil95cX9C
 L1NGSWjMAp9jw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pVY9Ob4r
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/5] i40e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 13, 2025 at 01:11:32PM +0300, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel i40e driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Simon Horman <horms@kernel.org>

