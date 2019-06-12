Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2377842E29
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 19:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEB6F865D6;
	Wed, 12 Jun 2019 17:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivempu-IXPlV; Wed, 12 Jun 2019 17:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2308C86704;
	Wed, 12 Jun 2019 17:57:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E33EA1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 17:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF552865D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 17:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRk3OFedbE5X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 17:57:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7EC686356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 17:57:51 +0000 (UTC)
Received: from mail-wr1-f70.google.com ([209.85.221.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <guilherme.piccoli@canonical.com>)
 id 1hb7VN-0004r7-O0
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jun 2019 17:57:49 +0000
Received: by mail-wr1-f70.google.com with SMTP id b4so5991997wrw.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 10:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s4IUnSSiIpl2lMpVYyoQTR+kVth6pxzLIVONQTtwkog=;
 b=KeGUMTU7ljL5LU5WCx/NqIGppiTfxe2HwXVf+wkyGdHo71K5hWDgQkl9zyM5nB+q7u
 yxW1ki04X/2h6fyXJvY1FUmXXVKBJgJMC0sAfINgMsW/eyJ7KYWSHoB/ebPB6kI4hm7+
 bzDNPXYq4RZ+OMzIomPMNoeqmuYhwkAC0bJ7NBfo2sWDeFk4CohmZus4LwjnRHMO5iIt
 RnQ1uO4yMfrFYXmd4YZMd3pihsfPvpF54KVGw378Ko3fQJFR1QqTRUsl8uyl2FJSyddE
 gO6M4pC0rcHoB3t7c51XTr3yTDsFx01Wi2IEY8OoRJkDv/98eADf0pN614fYter4oWh5
 ZIZg==
X-Gm-Message-State: APjAAAX3euahzwZZqFh7t1E+4ukkgFzTbOcvJg2v8FJ1p4ynFJr9zkBw
 lN1BMcSZK+y8LYdfzs61pevBppxuunpGcrjXa4mYGy/gqiicpgCj+GHmVtH6iOScbZWzK3AQl/a
 7jxDP3cW1fbYx2khaBfH7gzwa0VADPS5kK3Ii9JiDAOtk8cwAx6/JFK83+4AhL8c=
X-Received: by 2002:a7b:c34b:: with SMTP id l11mr304391wmj.69.1560362269484;
 Wed, 12 Jun 2019 10:57:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyfsU8/1Yl9d30npTOqffOU7eY2Uv697hht2WnzTiwrWzFGiOV1ik3USp0TfuK7O1oeWw3Gn/qHFPMlfaHCyck=
X-Received: by 2002:a7b:c34b:: with SMTP id l11mr304377wmj.69.1560362269256;
 Wed, 12 Jun 2019 10:57:49 -0700 (PDT)
MIME-Version: 1.0
References: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
 <CAHD1Q_zp_F0CMp-Z72R774-tPm3Vs+96m5DvKtmZbCTz6wAVjA@mail.gmail.com>
In-Reply-To: <CAHD1Q_zp_F0CMp-Z72R774-tPm3Vs+96m5DvKtmZbCTz6wAVjA@mail.gmail.com>
From: Guilherme Piccoli <gpiccoli@canonical.com>
Date: Wed, 12 Jun 2019 14:57:12 -0300
Message-ID: <CAHD1Q_zP2fiVmbL4gkubWO-AaU6n0CgR81RfihhhTjB4wTyKVA@mail.gmail.com>
To: "Wang, Liang-min" <liang-min.wang@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: add control of skipping PF
 link-status check
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Oh, I can see the messages in the archive page now!
--

About the patch: I cannot build mainline with that due to
IXGBE_LINK_SPEED_UNKNOWN,
which is only defined as 0 in ixgbe_types.h, in ixgbe/ folder. The
ixgbevf driver has no visibility to it.

To circumvent that, I've added this define to ixgbevf/defines.h and it worked.
Other than that, patch looks good.

Feel free to add:
Reviewed-by: Guilherme G. Piccoli <gpiccoli@canonical.com>

cheers,

Guilherme
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
