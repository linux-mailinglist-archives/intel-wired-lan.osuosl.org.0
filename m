Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95340B3707E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:35:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E2036068B;
	Tue, 26 Aug 2025 16:35:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1A5vL2PfRz_x; Tue, 26 Aug 2025 16:35:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9102C6068A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226123;
	bh=lvSqZf3jqMGrddvB1GH2Ui+B0/IQZ4BVNx+P9xyRQ98=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gjEMPEJslAnVQvFcYZlrX7Ados5P93eGeMpmqvnyDBWdhrO65oHhZB9L7tqF5Bod7
	 wI8zZwB02F4w6Oumje1rsvScWJqR9a/Mi1ckQpCouyY8zCHJbcefVwH5X3JDpAMHRb
	 U61xXCryj8ESaOxH1qaBi+iWoMQ+DHwxivP/1JQPTel1AXspogCZP85rm2M06bSsyK
	 tp1ysqwMVlIPKhCZVRKct4eYsAj8xRC87McyJCFbq9qo0IgKZtsCwsUg3gaRNSXws2
	 hTAuRiXhUKtPF7nmnGKIZ8wClUrUboqhCv8GJ3EGR9YREWiNIoHUoII23rd1A9gvD2
	 fPTt9cR4P54Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9102C6068A;
	Tue, 26 Aug 2025 16:35:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 909AF114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 827BF40080
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AvzqBfRz2xx7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:35:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0441340062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0441340062
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0441340062
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A13AE5C626A;
 Tue, 26 Aug 2025 16:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79AD4C4CEF1;
 Tue, 26 Aug 2025 16:35:18 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:35:16 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163516.GG5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-3-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-3-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226120;
 bh=RXy/P3BFDKjMwYnAAb7VzfDCQdF7X+LWTJB5skhvPpY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WtHV1G9RjJI6b60CjhPL8k59MCnuEviwIschbIFbTppRHxbdW21w44rjQ541sRZIr
 y++oTeasmmRktsYZBH068JVqQibAaZeecJ/lGT+cuWU7Z7yUdIPG91RzKcPqzZ3e94
 MovkXjON9mTVuGpGaGeQ8OdwZ3Pcy24Pg7t7sGcyJiD0Y/W9dFsO3IVM8TnY/Pch6I
 uuYInEA81aSL9V5wSJjQXEMSl/EGG4/J9PgTYoVTug9XNOJ0jjpwnLgH0FmlDSgtRh
 KD4r/jzIuei2ugkLQbFuDFPROSyQzauBwoB9kpbouytfOMRnhJJwaHtz/SXbReOLZO
 1mTlDuQ7DYzCw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WtHV1G9R
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/8] i40e: fix idx validation
 in i40e_validate_queue_map
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

On Wed, Aug 13, 2025 at 12:45:12PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> Ensure idx is within range of active/initialized TCs when iterating over
> vf->ch[idx] in i40e_validate_queue_map().
> 
> Fixes: c27eac48160d ("i40e: Enable ADq and create queue channel/s on VF")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

