Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B61C2412A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 23:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88B2087E74;
	Mon, 10 Aug 2020 21:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGbuLbMCHgpa; Mon, 10 Aug 2020 21:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E09487E68;
	Mon, 10 Aug 2020 21:59:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7CA1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EB4720452
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O242kQRL5Hho for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 21:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 7470920431
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 21:59:11 +0000 (UTC)
IronPort-SDR: xbPVSVoWai/vqVywNQieoewmsuYEnRIFUsgKfbK7/vNNYDROEstvJZsuidUH0AwaDBLiChY3az
 5/r48iDo4V1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="152846789"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="152846789"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 14:59:11 -0700
IronPort-SDR: ydbMiZLyTLBVnoQX8+SxPTFmXRfj1RGZn5QuEu8LWgm+z/C3SvCLIV4pBmjY6DSDUeh80mtSH8
 FxTqPn74xUNg==
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="317505689"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.186.124])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 14:59:10 -0700
Date: Mon, 10 Aug 2020 14:59:09 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <20200810145909.0000134f@intel.com>
In-Reply-To: <20200810184731.GA300766@eldamar.local>
References: <20200716203902.acn3ea2b4iorxlhq@inutil.org>
 <alpine.LFD.2.23.451.2007281106010.590669@jbrandeb-desk.jf.intel.com>
 <20200810184731.GA300766@eldamar.local>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Further information on
 CVE-2019-0145/CVE-2019-0146/CVE-2019-0147/CVE-2019-0148/CVE-2019-0149 for
 Linux?
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
Cc: Moritz Muehlenhoff <jmm@inutil.org>, intel-wired-lan@lists.osuosl.org,
 benh@debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 10 Aug 2020 20:47:31 +0200
Salvatore Bonaccorso <carnil@debian.org> wrote:

> > We will get you the information, it was a mistake on our part to
> > not mention CVEs in the commit messages if/when we upstreamed the
> > patches. The only thing I can say for sure is that these have been
> > addressed in our Out-of-tree drivers, but I realize that is not
> > your question.
> 
> Thanks a lot as well for coming back to the question from Moritz, much
> appreiciated.
> 
> I noted here was a submission for i40e fixes to stable, as
> https://lore.kernel.org/stable/20200807205517.1740307-1-jesse.brandeburg@intel.com/
> . Is any of those referring to one of the above?
> 
> Thanks already for your time,

The patches to address the above issues are part of mainline kernel
5.2.0, and (upcoming) stable kernel 4.19.139, however I'm not sure if
there is anything else I need to do in order to have them backported to
4.9.y.

I hope that helps you! Thanks for bringing it to our attention.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
