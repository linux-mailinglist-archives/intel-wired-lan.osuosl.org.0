Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF75B64D694
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 07:43:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 017E1418BF;
	Thu, 15 Dec 2022 06:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 017E1418BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671086583;
	bh=QKt4tctvGbTEWJ99J7aR26XMmPYLst5z3iFxvWDGABY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FrCzrd2zvbjcvVt+ygRFaG9l8VW+VuU4op4d/JcH9KE3et0OSIg6wSfS9j5/Moo7k
	 uuaQwa+Rlm/LtLSknA2+HiMVrbS83Vxf57CFqOTMqT9aptPoXG7r3Qhs+fbUJO/dSj
	 imNj6ls954khj7drZ4Hvx4eRzPvI7g3Xz9mlN27y7dhD6oE2mKWjoKhWpUt1MIWOhr
	 RwfOEzXD7wQObly2mnMEwaCCAyRCVNsZiDuQhwkcAJz714ax3ZSQv5Q47ctEfoLAFB
	 rsYDLoL1INtJ/GCtEDXUmKsWXS9xIzSQk+Kz61QS+R2EZm1gIFhKuLpKdeqtwakWHl
	 TkeCgqTabz9CA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9ss1CzvHeZ0; Thu, 15 Dec 2022 06:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4A1C418B6;
	Thu, 15 Dec 2022 06:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4A1C418B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A00B1BF846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 06:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF24E4013C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 06:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF24E4013C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2J1hh9NJglj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 06:42:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39831400F1
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39831400F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 06:42:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="316236059"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="316236059"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 22:42:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="712776321"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="712776321"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 22:42:52 -0800
Date: Thu, 15 Dec 2022 07:42:43 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y5rB4+WfR7BrSIaS@localhost.localdomain>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
 <20221212101505.403a4084@kernel.org>
 <f0078f0a-acbc-a9bd-effd-6d04507e71e2@intel.com>
 <Y5gdpoif/1zBUKDB@localhost.localdomain>
 <20221213171834.682641c3@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221213171834.682641c3@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671086576; x=1702622576;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pm6uNrQjsbjkEg80UIdNsEcOdC8rbC3az6NObzzXDQY=;
 b=kHb8OFFranED782vqIOut4Z9uUP525XgZH+iPea4n4C3LYk21fr61fcM
 aH+KmrXwHCpCEub5LVTMXyT+E17DDDtZZYV7wJMgJ2fxFYJqMQXwapC3S
 qgSi9+auy+gcjJjYou3yli7PI80INMIpPVKH27AYOXLNYlCUVsTJNRU1f
 DVru+MRDfiUE4TyMUyJB7OXRlmaHmWUiem0jhNNEidf54mhLCNz88bjsf
 m88QXeTq7NIc4eYa9r9u9km9OhdO4e4+96MwvxzrBy90dIZ4XPCmylNw0
 ARgreBKB9OiN6eluEMS3820JTPl/6DSTtpacJxwJRSTcih87MXFYntl5+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kHb8OFFr
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 00/10] implement devlink
 reload in ice
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 13, 2022 at 05:18:34PM -0800, Jakub Kicinski wrote:
> On Tue, 13 Dec 2022 07:37:26 +0100 Michal Swiatkowski wrote:
> > It was targeted to Tony dev-queue to allow some tests as Jake said.
> > Sorry, probably I should point it out in cover letter.
> 
> You can tag as intel-next, iwl-next or some such, to avoid confusion.

Thanks, I will use it next time.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
