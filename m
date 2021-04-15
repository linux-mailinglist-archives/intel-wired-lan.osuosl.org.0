Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F80235FFD8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 04:08:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8E368429E;
	Thu, 15 Apr 2021 02:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8jKP1EceDao9; Thu, 15 Apr 2021 02:08:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3D628408F;
	Thu, 15 Apr 2021 02:08:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2AF261BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 02:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1400F40F6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 02:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDq0pFec44i9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 02:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0564940F5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 02:08:38 +0000 (UTC)
IronPort-SDR: FGidHBRYG4xZRhNHuzCBo79wOOhUSwn8WW3iw/JDbkZbjnYwcC2Ffh1kl23oChMiyTb+YMS1w0
 6TBDUPpxPLuw==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="182276373"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="182276373"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 19:08:38 -0700
IronPort-SDR: 7lii/VjEuWHAT3RP9346JTNZO8RSGOm7hnPYTpW67DFX3TYpIMnFs76RVGwA9n0rp9EIoupYif
 Gu5a8LDWGMsA==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="383875358"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.19.126])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 19:08:37 -0700
Date: Wed, 14 Apr 2021 19:08:37 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
Message-ID: <20210414190837.0000085a@intel.com>
In-Reply-To: <CAL+tcoBVhD1SfMYAFVn0HxZ3ig88pxtiLoha9d6Z+62yq8bWBA@mail.gmail.com>
References: <20210412065759.2907-1-kerneljasonxing@gmail.com>
 <20210413025011.1251-1-kerneljasonxing@gmail.com>
 <20210413091812.0000383d@intel.com>
 <CAL+tcoBVhD1SfMYAFVn0HxZ3ig88pxtiLoha9d6Z+62yq8bWBA@mail.gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix the panic when
 running bpf in xdpdrv mode
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jason Xing wrote:

> On Wed, Apr 14, 2021 at 12:27 AM Jesse Brandeburg
> <jesse.brandeburg@intel.com> wrote:
> >
> > kerneljasonxing@gmail.com wrote:
> >
> > > From: Jason Xing <xingwanli@kuaishou.com>
> >
> > Hi Jason,
> >
> > Sorry, I missed this on the first time: Added intel-wired-lan,
> > please include on any future submissions for Intel drivers.
> > get-maintainers script might help here?
> >
> 
> Probably I got this wrong in the last email. Did you mean that I should add
> intel-wired-lan in the title not the cc list? It seems I should put
> this together on
> the next submission like this:
> 
> [Intel-wired-lan] [PATCH net v4]

Your v3 submittal was correct. My intent was to make sure
intel-wired-lan was in CC:

If Kuba or Dave wants us to take the fix in via intel-wired-lan trees,
then we can do that, or they can apply it directly. I'll ack it on the
v3.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
