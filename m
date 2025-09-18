Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5913B84EFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 15:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EB3D41828;
	Thu, 18 Sep 2025 13:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7oB3dDdH3znO; Thu, 18 Sep 2025 13:59:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAFC541800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758203968;
	bh=OYUdB3o9zp466VShZjeLP83rwHs06vpfLs5KfMs/gvM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yg3rFzGwhnuoXlV4kRkQv6XQbm4WqNk6u7PlhJ9GXr0HjZ6kjPXJOfnJxFUhgtWQv
	 d60Qq9QtA29w1Mg95c0fKNFKrsNqhX1F0C5lDPp/16lqZfD5ZsO98DIb8+Ixftym4h
	 fwny9I1sRqhCOI120DqSbtGMDfEPJ12pZF0t2w9JUYgsw1arvAO80d34jrh+6N4U4T
	 sq0orL8mJVPSKU7Ekja7s0qlFI8x2YpL17tNuIeXssU5ztzHl+EOIgnDc5DE67jnyq
	 jdl2k0E/YNcZ3xXSaOOv4RcaH6ry18iD/SKSJUMw1jkOuixAkl3YUJy4j6sy0ppZze
	 fud2X1uSBFU9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAFC541800;
	Thu, 18 Sep 2025 13:59:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BF00279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 13:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 826BA61310
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 13:59:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFg7lfFcUWIo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 13:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DE8DC60F15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE8DC60F15
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE8DC60F15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 13:59:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 264734420C;
 Thu, 18 Sep 2025 13:59:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A8BDC4CEEB;
 Thu, 18 Sep 2025 13:59:24 +0000 (UTC)
Date: Thu, 18 Sep 2025 06:59:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <20250918065923.26331dd6@kernel.org>
In-Reply-To: <3091c796-acad-4c87-9782-3b67210147c2@linux.dev>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-2-vadim.fedorenko@linux.dev>
 <20250917174148.0c909f92@kernel.org>
 <3091c796-acad-4c87-9782-3b67210147c2@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758203965;
 bh=p5Lv3uUZAHbIQ99lh3jk7U1dwg6LSEj2Bbz5I2CYnbg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AgKSRqA04k3JrwNjdykMpfmrT2Tz99xMPbKvjXrVTBygsJeAuh04AKi6MfaPN4+ub
 3g9P+w26QO/Z9RXkQFTQz6kqfZvLFbl67g4hG3MIg2+k8LVATIgGIW0mzyvxWT0/5v
 9tlycIpqZshLfNCa8c7XHoisPaQl0s3Ysok9spqTn00Vhub6Npb3Vk1EpHDvBCoP+4
 WlTAKoxwbhpsQtaznUrHCayMBGfD2TAP9aqJyc6pMo+S6DnpP7loITmGIVGlpEPu8g
 exVvtDaibLrmXsXyda/RSR4M9OpA/eA4I8O/2aPqRH3EUvy+RylkhaUFT+L8cpFe2s
 NXbAbYHcWTiZQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AgKSRqA0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] ethtool: add FEC bins
 histogram report
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

On Thu, 18 Sep 2025 11:53:53 +0100 Vadim Fedorenko wrote:
> On 18/09/2025 01:41, Jakub Kicinski wrote:
> > On Tue, 16 Sep 2025 19:12:54 +0000 Vadim Fedorenko wrote:  
> >> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> >> clarifies it a bit further. Implement reporting interface through as
> >> addition to FEC stats available in ethtool.
> >> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
> >> index 7a7594713f1f..de5008266884 100644
> >> --- a/Documentation/netlink/specs/ethtool.yaml
> >> +++ b/Documentation/netlink/specs/ethtool.yaml
> >> @@ -1219,6 +1219,23 @@ attribute-sets:
> >>           name: udp-ports
> >>           type: nest
> >>           nested-attributes: tunnel-udp
> >> +  -
> >> +    name: fec-hist
> >> +    attr-cnt-name: __ethtool-a-fec-hist-cnt  
> > 
> > s/__/--/  
> 
> That will bring strong inconsistency in schema. All other attributes
> have counter attribute with __ in the beginning:
> 
>      name: fec-stat
>      attr-cnt-name: __ethtool-a-fec-stat-cnt
> 
>      name: stats-grp
>      attr-cnt-name: __ethtool-a-stats-grp-cnt
> 
>      name: stats
>      attr-cnt-name: __ethtool-a-stats-cnt

I know.

> >>   static void
> >> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
> >> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
> >> +		   struct ethtool_fec_hist *hist)
> >>   {
> >> +	struct ethtool_fec_hist_value *values = hist->values;
> >> +
> >> +	hist->ranges = netdevsim_fec_ranges;
> >> +
> >>   	fec_stats->corrected_blocks.total = 123;
> >>   	fec_stats->uncorrectable_blocks.total = 4;
> >> +
> >> +	values[0].bin_value = 445;  
> > 
> > Bin 0 had per lane breakdown, can't core add up the lanes for the
> > driver?  
> 
> Like it's done for blocks counter? Should we force drivers to keep 'sum'
> value equal to ETHTOOL_STAT_NOT_SET when they provide per-lane values?

No preference, but if it is NOT_SET we should add it up.

