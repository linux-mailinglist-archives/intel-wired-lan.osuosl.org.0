Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F123F49E678
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 16:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B9F360AA8;
	Thu, 27 Jan 2022 15:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0r9OlAtfjCq8; Thu, 27 Jan 2022 15:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32FB260A94;
	Thu, 27 Jan 2022 15:45:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C19DE1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA89E400C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkXgoSnASsnC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 15:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCC43400BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643298325; x=1674834325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GYhRrfYgPBxS60sQUitUQNmC2729pcuD8+OVfqG3hiY=;
 b=ha4Ape6wE3y0ZxFrGXFYpwyE3vWMLc6dS0a1Mnwa2/cPzfZMXactB1B+
 Obpj2l9DkarpwqQrYpqsiPK0y1dNKhIHGBbwbhYfxkzIai4mFjrM2YAUQ
 +LqTkHfgNFVqdxnqWN8d4Gxm7JTUFej6xtzZSgzsc5btkx15B3fAyv9Le
 poabjtgRD9j5QQ8lil5oNRd28B/Y7GAu/sx3hf0i72+uGxjK+pnt1FycF
 0m1fACcN1BFdWiqXr60J8xJn+mXCavXRzVe3p137bcS8QJRp2uzPK86Yu
 CwqKjt4cbzvXMuqTzrd8sPBfePaUJnNGLqwf7KQp+S3hTCVtmbcyjKyv/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226864409"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="226864409"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 07:45:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="533149626"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jan 2022 07:45:22 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20RFjLTo029246; Thu, 27 Jan 2022 15:45:21 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 27 Jan 2022 16:43:35 +0100
Message-Id: <20220127154335.623551-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <6375d82b976f18eb085859082c548b35b168cf14.camel@intel.com>
References: <20220124173116.739083-1-alexandr.lobakin@intel.com>
 <20220124173116.739083-4-alexandr.lobakin@intel.com>
 <6375d82b976f18eb085859082c548b35b168cf14.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] ice: switch: use a
 struct to pass packet template params
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 26 Jan 2022 22:39:38 +0100

> On Mon, 2022-01-24 at 18:31 +0100, Alexander Lobakin wrote:
> > ice_find_dummy_packet() contains a lot of boilerplate code and a
> > nice room for copy-paste mistakes.
> > Instead of passing 3 separate pointers back and forth to get packet
> > template (dummy) params, directly return a structure containing
> > them. Then, use a macro to compose compound literals and avoid code
> > duplication on return path.
> > Now, dummy packet type/name is needed only once to return a full
> > correct triple pkt-pkt_len-offsets, and those are all one-liners.
> >
> > Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> 
> This isn't applying to next-queue.

Ah, right, there's a small non-semantic conflict. I've just sent v2.

> 
> <snip>
> > @@ -4960,11 +4974,9 @@ ice_add_adv_recipe(struct ice_hw *hw, struct
> > ice_adv_lkup_elem *lkups,
> >   * @pkt_len: packet length of dummy packet
> >   * @offsets: pointer to receive the pointer to the offsets for the
> > packet
> >   */
> > -static void
> > +static struct ice_dummy_pkt_profile
> >  ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16
> > lkups_cnt,
> > -                     enum ice_sw_tunnel_type tun_type,
> > -                     const u8 **pkt, u16 *pkt_len,
> > -                     const struct ice_dummy_pkt_offsets **offsets)
> > +                     enum ice_sw_tunnel_type tun_type)
> 
> kdoc needs to be updated here.

Right, I somehow missed that (usually I build kernels with W=1),
sorry >_< Fixed in v2.

> 
> <snip>
> 
> >  /**
> > @@ -5104,8 +5065,7 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem
> > *lkups, u16 lkups_cnt,
> >  static int
> >  ice_fill_adv_dummy_packet(struct ice_adv_lkup_elem *lkups, u16
> > lkups_cnt,
> >                           struct ice_aqc_sw_rules_elem *s_rule,
> > -                         const u8 *dummy_pkt, u16 pkt_len,
> > -                         const struct ice_dummy_pkt_offsets
> > *offsets)
> > +                         const struct ice_dummy_pkt_profile
> > *profile)
> 
> Here as well.
> 
> Thanks,
> Tony

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
