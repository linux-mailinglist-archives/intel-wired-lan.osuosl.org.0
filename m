Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44950226E3D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jul 2020 20:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCFD787E6F;
	Mon, 20 Jul 2020 18:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUTubvQhUfgH; Mon, 20 Jul 2020 18:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6868A87E3C;
	Mon, 20 Jul 2020 18:27:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E07E71BF97C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 18:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1F89844B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 18:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qEFAFFuShw6s for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jul 2020 18:27:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D74282412
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 18:27:15 +0000 (UTC)
IronPort-SDR: OebYPi15eN0fP8hW2u+hPaKDamaThWpbimgB8tez+80p6jQdFpzLpJmpDEdXwBpOudW146v9C1
 Yh//lLkO4DcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="138084682"
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="138084682"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 11:27:14 -0700
IronPort-SDR: LciR8i+5hPPn2C8YWR2PgOwnfBO22YUN1SqDrdx49Mw4yHNNjn8BllG42acue01tjujKSmSA1w
 qjV6jaW6K+ig==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="487336367"
Received: from jrmontoy-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.71.203])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 11:27:13 -0700
MIME-Version: 1.0
In-Reply-To: <20200720001046.g7y3p7wrua5qz6i2@lion.mk-sys.cz>
References: <20200707234800.39119-1-andre.guedes@intel.com>
 <20200720001046.g7y3p7wrua5qz6i2@lion.mk-sys.cz>
From: Andre Guedes <andre.guedes@intel.com>
To: Michal Kubecek <mkubecek@suse.cz>
Date: Mon, 20 Jul 2020 11:27:12 -0700
Message-ID: <159526963226.8351.8054617544521796564@jrmontoy-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH ethtool 0/4] Add support for IGC driver
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Michal,

Quoting Michal Kubecek (2020-07-19 17:10:46)
> On Tue, Jul 07, 2020 at 04:47:56PM -0700, Andre Guedes wrote:
> > Hi all,
> > 
> > This patch series adds support for parsing registers dumped by the IGC driver.
> > For now, the following registers are parsed:
> > 
> >       * Receive Address Low (RAL)
> >       * Receive Address High (RAH)
> >       * Receive Control (RCTL)
> >       * VLAN Priority Queue Filter (VLANPQF)
> >       * EType Queue Filter (ETQF)
> > 
> > More registers should be parsed as we need/enable them.
> > 
> > Cheers,
> > Andre
> 
> Series merged. But please consider making the output consistent with
> other Intel drivers which use lowercase keywords for values (e.g.
> "enabled") and "yes"/"no" for bool values (rather than "True" / "False").

Sure, I'll send a patch aligning this.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
