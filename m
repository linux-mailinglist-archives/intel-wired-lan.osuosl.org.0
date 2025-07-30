Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F205AB15723
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 03:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E5D7835C4;
	Wed, 30 Jul 2025 01:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VmcBhBF4lipD; Wed, 30 Jul 2025 01:51:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF9A5835EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753840311;
	bh=FSTTcNwCFjV5ZNw8sH9FpdgBWmeKKWKLX6xf/sT7fIg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JJm4xg7hlKUaKrTY0y1qqYR564fp22cGZ2XbRgINE0K3L/BY9EfAZUROd2KyHvlTS
	 l1bp/T8BR082uZoOC92mFtqhl9oc+wP5nkdGzEetdgdwhRZDFU4oYb0cVdo1AQdEXc
	 ovqW3JQNwEnPBTXjv9Bg+aD5tQj3vGKrcnYztT5m+ENYy1FrFHbyLoNlEh5xZI3EXh
	 3syE8BNRTQItj0j0E4ou//HB5Jedu5Zr+82jXfBvZYvlKGtfTSmm+uAXv7Ov48VqoD
	 p2+a3lUXXSg+mRKOT3SIe5Iv0j4OJPEMlXKIckvS/m+OB2TRvD3Bmwk6hTILQ67Fhu
	 aq3Ob9BXdc6ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF9A5835EF;
	Wed, 30 Jul 2025 01:51:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 98D24194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 01:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B3F2600C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 01:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tnqPWCJPNkM5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 01:51:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7C85605AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7C85605AE
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7C85605AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 01:51:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C42255C66E9;
 Wed, 30 Jul 2025 01:51:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA632C4CEF4;
 Wed, 30 Jul 2025 01:51:46 +0000 (UTC)
Date: Tue, 29 Jul 2025 18:51:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, netdev@vger.kernel.org
Message-ID: <20250729185146.513504e0@kernel.org>
In-Reply-To: <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
 <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753840307;
 bh=9HtHkWm6oII2ugGm/Moxtwt6YQVO4r1lJgDoKI68LxA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nzykC+XOO5rqiwCzELyqP3kpawzzt+5KH8oHFAKznqjQ9uQSBrotKDMYiQzIppRtP
 W0J+OcPwxOc+7CMaqz8AytXq2JegaBJopxNWYjAQpQOu6S9T0pqEYzl5r7z+FPlEpQ
 DYz5ZSHLe46xjJ6zdv/Tkte/rFJ/0AyevkLAxOVOBtOn7YJ5n6uxLMiyftGAh0hiUT
 1KcB7Z8Lf8dyYiDvfudSorOPe/EfK6z49kNu8T44ZuVIoDfmtGYRWVAboKLPuk2dWW
 exgQrNgld0QW/pwhIrl1uV3SFmkieyV+tP2bpwR5F5BxqFahpdSoWxB4lL5c3D1za6
 CxFXd7yZ0Z33A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nzykC+XO
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On Tue, 29 Jul 2025 19:07:59 +0100 Vadim Fedorenko wrote:
> On 29/07/2025 18:31, Andrew Lunn wrote:
> >> The only one bin will have negative value is the one to signal the end
> >> of the list of the bins, which is not actually put into netlink message.
> >> It actually better to change spec to have unsigned values, I believe.  
> > 
> > Can any of these NICs send runt packets? Can any send packets without
> > an ethernet header and FCS?
> > 
> > Seems to me, the bin (0,0) is meaningless, so can could be considered
> > the end marker. You then have unsigned everywhere, keeping it KISS.  
> 
> I had to revisit the 802.3df-2024, and it looks like you are right:
> "FEC_codeword_error_bin_i, where i=1 to 15, are optional 32-bit
> counters. While align_status is true, for each codeword received with
> exactly i correctable 10-bit symbols"
> 
> That means bin (0,0) doesn't exist according to standard, so we can use
> it as a marker even though some vendors provide this bin as part of
> histogram.

IDK, 0,0 means all symbols were completely correct.
It may be useful for calculating bit error rate?

A workaround for having the {-1, -1} sentinel could also be to skip 
the first entry:

	if (i && !ranges[i].low && !ranges[i].high)
		break;
