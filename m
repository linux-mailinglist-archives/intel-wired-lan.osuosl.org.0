Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A5B854C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 16:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 661F084406;
	Thu, 18 Sep 2025 14:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3BV0zn5XAhPV; Thu, 18 Sep 2025 14:40:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC4D784490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758206455;
	bh=cb39dSrqocHlslF00dbHVz6qUIck2mU9q6mkn//uO+c=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SEQOQinriDcjHLScF0jN9RSe4eqtfEPF2Y6vf0bVWrhwKcFXF9P5CshIAueX6+2Bd
	 zM3p1Wt+0l7TlVKETeOYtrhkZe2VTiBx5rkMz3I9xSq2Qpqz6YJiF+H2JFCBjlhrKT
	 H46GfRuvEdhmGPEPEnfXxK0qZy7AOeGu6t6GUYiDaXj/NWduh7LF2reCz8I4r5X7yj
	 M/XsK9QrdgFu5n6OqJHXkEFEaCn0kestcd54u+eV+IvxjJ7VToaDc4qv0m1Mlre8cb
	 LzL+ZGcY5sg5v9nrDW3YzP7OR0gzE/+T/THC29u7OZ1AyXP/HjdzD2Ty3jyEzw1/kg
	 apemWxQ6GedBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC4D784490;
	Thu, 18 Sep 2025 14:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 91B1B199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60DC584406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdaEC-xzefCY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 14:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AF09842A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AF09842A4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AF09842A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:40:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0884F438F2;
 Thu, 18 Sep 2025 14:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08552C4CEE7;
 Thu, 18 Sep 2025 14:40:44 +0000 (UTC)
Date: Thu, 18 Sep 2025 07:40:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <20250918074044.4b3e8ac2@kernel.org>
In-Reply-To: <28315831-21f7-49e0-b445-b3df0cb123e0@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-5-vadim.fedorenko@linux.dev>
 <20250917174837.5ea2d864@kernel.org>
 <28315831-21f7-49e0-b445-b3df0cb123e0@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758206445;
 bh=Lf3DkMG5CSfOckaU6onnP263E2CUT5+6A9+k8/tvYqM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZIL1fY4rmW6BOX721LiMRpVNCdWyKsX/5ajxk+VSvpH6f/FllLOdcRMGCh/CD4v5B
 CL0rkh6FsbBs5oJrW/17+IX5scqPkpX+ekJWmxcYk0Kg0Btn1SOmAJAlNgC/FyhCEq
 qF/YTykFUWbqU1BpvmgqH+EA20+ZhLm+U52elFLkbXONw1YVSsHlE/mRHOZph+uO2h
 Hu0cauc5PVCeB/V5sUkFgJRKzxxJhLKIrkxCdDRxMrQttTrRaOTX6IhYguZBT7N3A0
 PpLT+tD8QT9aZnSNjhm64RjNOJQsnphuXV3t5pStapRIDA461cPBzmUP7Ka4sn0oSm
 7cCiNp7fvKsPg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZIL1fY4r
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/4] net/mlx5e: Report
 RS-FEC histogram statistics via ethtool
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

On Thu, 18 Sep 2025 15:32:51 +0100 Vadim Fedorenko wrote:
> On 18/09/2025 01:48, Jakub Kicinski wrote:
> > On Tue, 16 Sep 2025 19:12:57 +0000 Vadim Fedorenko wrote:  
> >> +	for (int i = 0; i < num_of_bins; i++) {  
> > 
> > brackets unnecessary
> > 
> > in the other patch you picked u8 for i, good to be consistent
> > (int is better)
> >   
> >> +		hist->values[i].bin_value = MLX5_GET64(rs_histogram_cntrs,
> >> +						       rs_histogram_cntrs,
> >> +						       hist[i]);  
> > 
> > could also be written as:
> > 
> > 		hist->values[i].bin_value =
> > 			MLX5_GET64(rs_histogram_cntrs, rs_histogram_cntrs, hist[i]);  
> 
> this doesn't actually fit into 80 chars (84 chars long)... unless we are
> not too strict in the drivers..

Thought it did, ignore the suggestion, then

