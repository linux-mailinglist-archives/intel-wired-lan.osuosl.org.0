Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7E990B2E1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 16:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C99B84094B;
	Mon, 17 Jun 2024 14:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWa8u4KSYZUs; Mon, 17 Jun 2024 14:52:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEF41408DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718635971;
	bh=SP8NAzf/ehsG5R5+sT6BRAtIR1rF7U+ThkfJOLDlBJM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zvBnlNSr8VN0JKgLnQJCZIzQSwJudvHF+OwuT+IB3zVbc0dxsoEYa3DLZ56TV3vPp
	 ATZe+39PtBM5RSELpt+nsOiEVpO2qfOss6ZloqQw37MMo0OMvcKIuFQtkSZKYYEr2Y
	 lQJnU+tb6b5MUqrfsmdAxeIh4QO4+eX0dK4LB41pCHCba8mAkIGQZhJuxZEGHeG8Pd
	 D7g17y0qXOJvLr9YaUJoxLCJpMbiStahXHT/ILO2HMYPnua561ofEaL1G0wUgS78Rd
	 N+pMl87XEI45owShvx2W2OnVYAiwzU/uxA+I+zJZDYFY00N+DxkjdY+l9MWqBfEe7s
	 ixCC2fRxahaoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEF41408DC;
	Mon, 17 Jun 2024 14:52:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 105781BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 14:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F037040319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 14:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q1NVX7X_awNl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 14:52:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2130D401D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2130D401D8
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2130D401D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 14:52:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3EF5E611A6;
 Mon, 17 Jun 2024 14:52:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18967C2BD10;
 Mon, 17 Jun 2024 14:52:44 +0000 (UTC)
Date: Mon, 17 Jun 2024 15:52:42 +0100
From: Simon Horman <horms@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20240617145242.GV8447@kernel.org>
References: <20240614125935.900102-1-anil.samal@intel.com>
 <20240614125935.900102-4-anil.samal@intel.com>
 <20240614175559.4826e4aa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614175559.4826e4aa@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718635966;
 bh=MG9R0YfcKoDfDsSnG7bCZrb8TdRezjqK3o93Y26S1tw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CdnI448E7dlOEMvXHIL43p3SKF1g+6khI9sOn99rKqrjgzzTr45BhRTDk05D/GZBi
 gJYL+H9T58CvtvKH75QvWBrVvzgfs0xGb/zsphaDAzSjBO+HXbXziFqzUN7FT9wYfc
 uAHPIA+RMUWx6pJ/7OS9XTdWnfBsqe73kGeI4T5wLfWHxqU59gB8TP1xMh+rmZvdPi
 fqpryfnXl7jHdGGfobSdybZFUNo3Hl17G+CGQqFpE6tVsC8AkrRDW/jbvfPU09YpC2
 uvGAN63FOua4xp0MJr4pi94TxXYYNUQ9vIXXaSnyjqe3BYDtFK/v5mZGkJZjvMtEQq
 0GkXvTkOKxEeQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CdnI448E
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 Anil Samal <anil.samal@intel.com>, leszek.pepiak@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 14, 2024 at 05:55:59PM -0700, Jakub Kicinski wrote:
> On Fri, 14 Jun 2024 05:58:17 -0700 Anil Samal wrote:
> > To debug link issues in the field, serdes Tx/Rx equalizer values
> > help to determine the health of serdes lane.
> > 
> > Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
> > The following list of equalizer param is supported
> >     a. rx_equalization_pre2
> >     b. rx_equalization_pre1
> >     c. rx_equalization_post1
> >     d. rx_equalization_bflf
> >     e. rx_equalization_bfhf
> >     f. rx_equalization_drate
> >     g. tx_equalization_pre1
> >     h. tx_equalization_pre3
> >     i. tx_equalization_atten
> >     j. tx_equalization_post1
> >     k. tx_equalization_pre2
> 
> I'd be tempted to create a dedicated way to dump vendor specific signal
> quality indicators (both for Ethernet and PCIe). Feels little cleaner
> than appending to a flat mixed-purpose dump. But either way is fine by
> me, TBH. Much better than vendor tools poking into the BAR...

+1

In particular, I agree that either way ethtool -d is
better than than vendor tools poking into the BAR.
Because the Kernel can mediate access to the hardware
and see the data.
