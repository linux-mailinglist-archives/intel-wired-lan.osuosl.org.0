Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB83537249
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 May 2022 21:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7786160D79;
	Sun, 29 May 2022 19:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAcDOCZGgVfM; Sun, 29 May 2022 19:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4766260DB7;
	Sun, 29 May 2022 19:04:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A01F61BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 May 2022 19:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 86EC084307
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 May 2022 19:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=6wind.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oSHhiinDoX3M for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 May 2022 19:04:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A2B184304
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 May 2022 19:04:01 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 h62-20020a1c2141000000b0039aa4d054e2so1226772wmh.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 May 2022 12:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MtzNwdll4LTazb3SnDmOfdBWik1I1Q3tYPCC6MNC+oU=;
 b=Db9IdsVz4okVy/S44zxw3DOHLc6tberVKjnPVcR8LIaTHhBJ9kG87hx06QXf3NGil+
 0UVgxCAlf2Ex6VL6uI8y8UyHbVVRBVZ4/NQiZgwzlX9/lFNPL+tkAWfXoSNqLgOnyGNU
 DsoRqvGoj3kUqkY6rDexOmTpCJGM1ewGACFXQ+jfYk8RIqEK0+LWfY59qNM4W4ygaAVe
 vMDW8Re6FVMDhtI9VY97uOD4Etml70cm8B5JNeZG/EdIYsUKNmQ3M6thi4bue3bAXyIX
 U0AGTO2yfN8Lzmo96DRaH2IGdpcxyMY9eq5oQY+m1K0Ehl5/K2H3HHsoRaS5Y1C+XsLi
 hc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MtzNwdll4LTazb3SnDmOfdBWik1I1Q3tYPCC6MNC+oU=;
 b=2I0/uPm0/awCwQvvmHAlpu0LR9Wk8ey3iIyWQyAH7CJ1t6/VTPJsJrvRgVR1QZuL0t
 0ai/zpeyIq29BHyarseD2J5fR25VlOxo5CbOy6EK+Pr8oj3YWTUDRMtvBoKIVeyXIqvO
 8lzcckuDjWUHf/0jDpAYsXxBFj1HA94VoIPXIcV+reKPyU2sLGmU/yUhwJVBYwHhD+Xm
 6gTicK6yK39zkNFZc9X2oqnoo6GfV1sVKAutiXha9Pr3kDSUbAByPJWQG8CmUpkLgW/7
 HqG/QZi5Iz2zzB/jXqehNQUQIg9ol7QCuP2xadjxH+RZ8kmuZfOq2pBiGf6R16MLLfeU
 QaTQ==
X-Gm-Message-State: AOAM533uK9c/Aqgj41mGuq/QfM/gy3IOUlvm3lJhNouLMtDabXF8ul/E
 cjxfEvB0i0LWpFpfB/xpE+qwjA==
X-Google-Smtp-Source: ABdhPJxx0AIi2dkIWVCXl7rwvfW5NdZbl6YNOoydU2sAUy31f4xaRC6B/EepgHM7fQOYwYnG14sz3g==
X-Received: by 2002:a05:600c:3c8f:b0:39b:808c:b5cb with SMTP id
 bg15-20020a05600c3c8f00b0039b808cb5cbmr3597003wmb.11.1653851039490; 
 Sun, 29 May 2022 12:03:59 -0700 (PDT)
Received: from 6wind.com ([2a01:e0a:5ac:6460:c065:401d:87eb:9b25])
 by smtp.gmail.com with ESMTPSA id
 m5-20020a5d64a5000000b0020c5253d8casm7937420wrp.22.2022.05.29.12.03.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 May 2022 12:03:58 -0700 (PDT)
Date: Sun, 29 May 2022 21:03:57 +0200
From: Olivier Matz <olivier.matz@6wind.com>
To: Piotr Skajewski <piotrx.skajewski@intel.com>
Message-ID: <YpPDnXRlxC5doIAJ@platinum>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
 <20220526141015.43057-1-piotrx.skajewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526141015.43057-1-piotrx.skajewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] ixgbe: fix promiscuous
 mode on VF
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, nicolas.dichtel@6wind.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Piotr,

On Thu, May 26, 2022 at 04:10:15PM +0200, Piotr Skajewski wrote:
> > On Mon, Apr 25, 2022 at 01:51:53PM +0200, Olivier Matz wrote:
> > > Hi,
> > > 
> > > On Wed, Apr 06, 2022 at 11:52:50AM +0200, Olivier Matz wrote:
> > > > These 2 patches fix issues related to the promiscuous mode on VF.
> > > > 
> > > > Comments are welcome,
> > > > Olivier
> > > > 
> > > > Cc: stable@vger.kernel.org
> > > > Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> > > > 
> > > > Changes since v1:
> > > > - resend with CC intel-wired-lan
> > > > - remove CC Hiroshi Shimamoto (address does not exist anymore)
> > > > 
> > > > Olivier Matz (2):
> > > >   ixgbe: fix bcast packets Rx on VF after promisc removal
> > > >   ixgbe: fix unexpected VLAN Rx in promisc mode on VF
> > > > 
> > > >  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
> > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > Any feedback about this patchset?
> > > Comments are welcome.
> >
> > I didn't get feedback for this patchset until now. Am I doing things
> > correctly? Am I targeting the appropriate mailing lists and people?
> >
> > Please let me know if I missed something.
> 
> Hi Olivier,
> 
> Sorry for the late reply,
> We had to analyze it internally and it took us some time.
> After reviewing, we decided that the proposed patches could be accepted.
> 
> ACK for series.

No problem for the delay.
Thank you!

Olivier
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
