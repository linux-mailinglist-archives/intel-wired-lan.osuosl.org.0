Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B1FB37084
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:35:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E796F80A63;
	Tue, 26 Aug 2025 16:35:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id csxOrDoqGOkQ; Tue, 26 Aug 2025 16:35:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59F9280A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226138;
	bh=MBL1S/+zf1LOQdC8aiuCGSTsvORCLUYDue5oRKteMHk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JfGxcH7VI8sS7C8LzSOPq8bATHQkvHaBfxx4sOxX16/4so5oNMY7Vqf0RnhAviQTY
	 eua1q9z8rQQxUOWKJo5wbiGiwSUiq0/J+Zn2jRxZcnohXzYtnCRI6D3vyGGlPeBVTl
	 lcaUziTtVoVTnxjIC9d/l3IDUlkzc7BOCqXIHw1Yp/bDXxE2xqK38Q8/dIBDDxucDo
	 Lwd8PVi6MwnwJVGQHFsbwS0oVtUA3fcjUh82/+JUv3Uod58pB4bnt0SS9EUPGGUim8
	 Kdb9fSzrh9yXMHwDIZ7CwVDo26gi33Ewh69aurHlCtTHX950aqcvqajEiXzosm7vPd
	 qIWpTNNmd/rug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59F9280A64;
	Tue, 26 Aug 2025 16:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B3AEB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D5AB4008A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hkw9tKZSz232 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:35:37 +0000 (UTC)
X-Greylist: delayed 2635 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Aug 2025 16:35:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0DC5740062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DC5740062
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DC5740062
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:35:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id BA16A44D9A;
 Tue, 26 Aug 2025 16:35:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA81CC4CEF1;
 Tue, 26 Aug 2025 16:35:34 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:35:32 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163532.GH5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-4-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-4-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226136;
 bh=MrQ8uwxf6gxIudqMpUeggOMfu3sqkRlub+VF2qkIMsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eu11srEW/0ONU2gaCerZBClYW1xleAxOocZPyAUpPRvKHcJLvVUvCNa2siZ8MlGWq
 Dvhh4nliwf2dt3iUzrelE8+ITayX3TiPLWxEroZvzpRfIOTthcLiwUdDlAFEcK/XpN
 /9JHOqj/QGLAsjtly+0Nd3gThHgwhmw4HOlmnLrrpBgZ99LdSI+VU10jkPM3+zdy3D
 /JxTrgtSgYYj5rtOSqW8S9yW+dc7x20Km82lT4e8VNJ8JLd5epjk+Bm8dtcaax6ke+
 RiBBsl14/RFGorx4+l+CH6P0jGf/sXy4CZYaX4CUHblozWyNvyZUTliluQrNSVBAMh
 yHJ9pD/8XpuEA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eu11srEW
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/8] i40e: fix idx validation
 in config queues msg
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

On Wed, Aug 13, 2025 at 12:45:13PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> Ensure idx is within range of active/initialized TCs when iterating over
> vf->ch[idx] in i40e_vc_config_queues_msg().
> 
> Fixes: c27eac48160d ("i40e: Enable ADq and create queue channel/s on VF")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

