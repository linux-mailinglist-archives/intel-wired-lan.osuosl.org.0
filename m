Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBF365292D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 23:49:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A727281F2A;
	Tue, 20 Dec 2022 22:49:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A727281F2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671576588;
	bh=sTWyqFCBIpag0jKgYYC0HmnBKETP77T0rSeUE4D2J8Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7vFScT975VlJjUQounyaRfwJ2EvRf9BKnjRYSxCJgIKrvU/ZWqCrAyut3B7zaDsFG
	 iWh4dXp3vrtkmuL06P8rpthCvaTIr14Vn2Dd+pjGqP/8S8a26hWjd8d6wV1iqC07Vj
	 lUeuFigBUJLvyEcP6aSYPPHYRR7PVhhk/ZIpW5YzpbDuWvx5eEtVp+fF5dy3Otqv3r
	 Pg38RSXDOPvJPWQsJhN5ePh6QswYR6vX4dJTpACFyMPjsHTSeG2n6NFMXizGsTaa3g
	 QlMW0+Ot0QP1+GYzmC6CBxrujjCbSPPl76WdA4KAtCtOrLDCTviqfbwzY9gVZH94cG
	 gqnHpMwriufQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wn4mXoLWYtuG; Tue, 20 Dec 2022 22:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8DB981F36;
	Tue, 20 Dec 2022 22:49:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8DB981F36
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA9AB1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 22:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A126640376
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 22:49:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A126640376
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6BPMRTYXSFVW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 22:49:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 561E840239
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 561E840239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 22:49:41 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 v15-20020a9d69cf000000b006709b5a534aso8054785oto.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 14:49:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4KwK1yvYQTjObRGV/Ee2Veug/uu37QDLEY9vwWk0iOE=;
 b=sWpdDBcnZCTCYxkoV1EC5OEtwkkJsSQSVt9CUMy5fAYhfusCRxFA0moWJQyvWDYnQJ
 PxRnW/wetL9+1eQQM5a+0s+ykIiHChqmxG/N04bv/Q6tYnDdFTp3px+B/OsXifzCxOKN
 hAFU1auNDdHKCtmDnVFfyGhfDIs9s/+08Cnm6i3Npy44GGbsxLpSX4VOtMMQS+WTmHCT
 n4Wj07iCggzOPBoSYTX4eagb+ri2AvPEwazFeMTnQ1g54WJyipFgdT3PIWb/J9bHoO3Z
 obq4Eta+OZDpp9XePYjO71we+afFxauwEK9OuYn7000wHWPD3AgGLT/P9TdeJIhlNzKd
 EXlg==
X-Gm-Message-State: ANoB5plYNlVNoa4T1iF4hj+X7tWOHUp2SfLfQ5PxXlDk3y2QhFChSOKw
 M6ry3qbJjuqSOk2dhSpCCo+9jJ/tNcEu0IkCYoM=
X-Google-Smtp-Source: AA0mqf6z3OMKzFXJlDBOAeENAWyiR1f/A/gvjR3yMwURMujquGwsiM3nAMBBcaYeM906MmAut53X+CxQ9XjlDkAR/q4=
X-Received: by 2002:a05:6830:3890:b0:670:9045:f754 with SMTP id
 bq16-20020a056830389000b006709045f754mr2986309otb.87.1671576580360; Tue, 20
 Dec 2022 14:49:40 -0800 (PST)
MIME-Version: 1.0
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <20221219171321.7a67002b@kernel.org> <Y6F+YJSkI19m/kMv@lore-desk>
In-Reply-To: <Y6F+YJSkI19m/kMv@lore-desk>
From: Marek Majtyka <alardam@gmail.com>
Date: Tue, 20 Dec 2022 23:51:31 +0100
Message-ID: <CAAOQfrF963NoMhQUTdGXyzLMdAjHfUmvzvxpOL0A1Cv4NhY97w@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4KwK1yvYQTjObRGV/Ee2Veug/uu37QDLEY9vwWk0iOE=;
 b=AolKwaJSKC8sS4em3frVIuMXYrzfLQHoYk+FeqQDnjYu502+iebUYqfVXiGTPKJSkB
 5qabtuIeAECRWYZiUSEhKalMzFWxUezyhwlRhN0P+xI6gHvaTc2pSDWRu0dhTrF+0CCM
 ivjVuJTdCv7HP+mNPQJfyK3hFZVwoUc+j7bpejSaFl+ePu8tljeJqDr8p+AHBMREdbih
 masOmBNUGWotHla7ys1uTRzBA9l1ktpGUioRn0wfJSF/QTOKwJHeYZ4gVTQC+NHajC0o
 S+kFBNWhJaEYz+sjNRftUzKg+8voxI0mxrN4n4pRa9QF/mFGKPJXJVTMg/7/CbX6chvu
 K0rQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AolKwaJS
Subject: Re: [Intel-wired-lan] [RFC bpf-next 2/8] net: introduce XDP
 features flag
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, bjorn@kernel.org, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 20, 2022 at 10:20 AM Lorenzo Bianconi
<lorenzo.bianconi@redhat.com> wrote:
>
> > On Mon, 19 Dec 2022 16:41:31 +0100 Lorenzo Bianconi wrote:
> > > +=====================
> > > +Netdev XDP features
> > > +=====================
> > > +
> > > + * XDP FEATURES FLAGS
> > > +
> > > +Following netdev xdp features flags can be retrieved over route netlink
> > > +interface (compact form) - the same way as netdev feature flags.
> >
> > How likely is it that I'll be able to convince you that cramming more
> > stuff in rtnl is a bad idea? I can convert this for you to a YAML-
> > -compatible genetlink family for you in a jiffy, just say yes :S
> >
> > rtnl is hard to parse, and already overloaded with random stuff.
> > And the messages are enormous.
>
> Hi Jakub,
>
> I am fine to use YAML for this, but I will let Marek comment since he is the
> original author of this patch.
>
> >
> > > +These features flags are read only and cannot be change at runtime.
> > > +
> > > +*  XDP_ABORTED
> > > +
> > > +This feature informs if netdev supports xdp aborted action.
> > > +
> > > +*  XDP_DROP
> > > +
> > > +This feature informs if netdev supports xdp drop action.
> > > +
> > > +*  XDP_PASS
> > > +
> > > +This feature informs if netdev supports xdp pass action.
> > > +
> > > +*  XDP_TX
> > > +
> > > +This feature informs if netdev supports xdp tx action.
> > > +
> > > +*  XDP_REDIRECT
> > > +
> > > +This feature informs if netdev supports xdp redirect action.
> > > +It assumes the all beforehand mentioned flags are enabled.
> > > +
> > > +*  XDP_SOCK_ZEROCOPY
> > > +
> > > +This feature informs if netdev driver supports xdp zero copy.
> > > +It assumes the all beforehand mentioned flags are enabled.
> >
> > Why is this "assumption" worth documenting?
>
> I guess we can remove it.
> @Marek: any comment?
>
> >
> > > +*  XDP_HW_OFFLOAD
> > > +
> > > +This feature informs if netdev driver supports xdp hw oflloading.
> > > +
> > > +*  XDP_TX_LOCK
> > > +
> > > +This feature informs if netdev ndo_xdp_xmit function requires locking.
> >
> > Why is it relevant to the user?
>
> Probably not, I kept it since it was in Marek's original patch.
> @Marek: any comment?
>
> >
> > > +*  XDP_REDIRECT_TARGET
> > > +
> > > +This feature informs if netdev implements ndo_xdp_xmit callback.
> >
> > Does it make sense to rename XDP_REDIRECT -> XDP_REDIRECT_SOURCE then?
>
> yes, naming is always hard :)
>
> >
> > > +*  XDP_FRAG_RX
> > > +
> > > +This feature informs if netdev implements non-linear xdp buff support in
> > > +the driver napi callback.
> >
> > Who's the target audience? Maybe FRAG is not the best name?
> > Scatter-gather or multi-buf may be more widely understood.
>
> ack, fine. I will rename it in the formal series.
>
> Regards,
> Lorenzo
>
> >
> > > +*  XDP_FRAG_TARGET
> > > +
> > > +This feature informs if netdev implements non-linear xdp buff support in
> > > +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET is properly
> > > +supported.
> >
Everybody is allowed to make a good use of it. Every improvement is
highly appreciated. Thanks Lorenzo for taking this over.
Regards
Marek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
