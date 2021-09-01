Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0585B3FD108
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 04:02:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EDD260616;
	Wed,  1 Sep 2021 02:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acIimKZh27nM; Wed,  1 Sep 2021 02:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD2116061C;
	Wed,  1 Sep 2021 02:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04C791BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F36A940341
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:02:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3HUUBRAtaFhm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 02:02:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84E5140339
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:02:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BB8516102A;
 Wed,  1 Sep 2021 02:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630461757;
 bh=qa/JlIKKfChoTfKvIaNuaQ9fQbjG9at5EXHOY9AVt+s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JyVdzeao2Vrg6QNGEUoPMLLU3BA/TmKaWtM0iYg29yOjsWT9hz49WxZV6uIJaDX4Z
 6jIHsek088WGqZSg/TKs3VINlJtxhVciZog/2hkTH2Hhzv+sWk1e+0DWGa21iojxb8
 wZBDSxWIivMSf3Z//LNP9Zsn5h3K7Hh1pYud/mAHbL12kUyKHpJQzkPFCfj7sgPt/P
 zU/O1ppAOC0z66xglYHGrui/265Y9ONbBFgVgpR4F/Glcqww+HRt89iplkdXSIW0i8
 QU/4GiA5/VfyPX7oSuRDvvZSfFEEpNfb9ukQ8G3xgyaqulNVVCRnqgco8XtnleCxqt
 iZPdBOqwPFcTg==
Date: Tue, 31 Aug 2021 19:02:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210831190235.00fa780b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <SJ0PR11MB4958D55CB9EDD459AF076525EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210831161927.GA10747@hoboy.vegasvil.org>
 <SJ0PR11MB4958D55CB9EDD459AF076525EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: "bsd@fb.com" <bsd@fb.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 31 Aug 2021 22:09:18 +0000 Machnikowski, Maciej wrote:
> OK I can strip down the RTNL EEC state interface to only report 
> the state without any extras, like pin. Next step would be to add 
> the control over recovered clock also to the netdev subsystem.
> 
> The EEC state read is needed for recovered/source clock validation
> and that's why I think it belongs to the RTNL part as it gates the QL
> for each port.

If you mean just reporting state and have a syncE on/off without any
option for other sources that's fine by me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
