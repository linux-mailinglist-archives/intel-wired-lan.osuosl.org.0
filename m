Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091D29645F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 20:05:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0DE61207A8;
	Thu, 22 Oct 2020 18:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDTXPdMkdHZR; Thu, 22 Oct 2020 18:05:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E655E20555;
	Thu, 22 Oct 2020 18:05:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D45411BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 18:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D0BBF86B74
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 18:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a6FlpHsRZjS6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 18:04:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 264F286B2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 18:04:58 +0000 (UTC)
IronPort-SDR: s3kddOFypwEGDgTSsI6x3HLEEBbcWItZRAFdQ4KQYZgumyFk19FxCi3NjXDHJXMMNjtFuPRcr4
 bW4fz0x+Jzaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="167666784"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="167666784"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 11:04:57 -0700
IronPort-SDR: BWF/kVdcgWhWKDtBCPn1ymFn1I15IwUzVAT4Oyz57fEKz/9C6eQocSSIan39I8ytP8rzM1CB+V
 jF+bEDAIeN7A==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="348854095"
Received: from skottana-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.166.52])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 11:04:56 -0700
MIME-Version: 1.0
In-Reply-To: <20201022101003.GC61349@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-8-andre.guedes@intel.com>
 <20201021145742.GC58344@ranger.igk.intel.com>
 <160331862448.64680.18381150586195546148@lsachorn-mobl.amr.corp.intel.com>
 <20201022101003.GC61349@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 22 Oct 2020 11:04:55 -0700
Message-ID: <160338989511.80318.17251246598552128793@skottana-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 7/9] igc: Add support for XDP_TX action
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej,

Quoting Maciej Fijalkowski (2020-10-22 03:10:03)
> > > > +
> > > > +     buffer->next_to_watch = desc;
> > > > +
> > > > +     ring->next_to_use = (ring->next_to_use + 1) % ring->count;
> > > 
> > > Please avoid modulos.
> > 
> > Sure, I'll do it. Just out of curiosity, why modulo operation should be
> > avoided?
> 
> Just because it's slow and you're in fast path :p but you can take it as a
> suggestion.

Thanks, it makes sense. Also, looking at other Intel drivers, they handle
wrapping with an if-clause. I'll do the same here.

Cheers,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
