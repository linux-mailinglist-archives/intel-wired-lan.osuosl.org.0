Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D389718D7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2024 14:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ADAB6079A;
	Mon,  9 Sep 2024 12:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8zal04Yf1NWy; Mon,  9 Sep 2024 12:00:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B47F36077F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725883254;
	bh=cpdpP7XrkguLKZMcKqCgqEC63d0bhaIvdu7qQWH0DOc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mNA4n/92oEoF7b6Wb926nBcQqo/rUYyCLw+etSvpGqWxQPuoZjSx3mC230dHbEShA
	 L2FhEZP2ryMxVodG3/ZQGcVCtPxK1WuNUM0/UxTVhqMtw1YIvAvkxlkqpBMGIKDA8M
	 z3XE8lzEwNm8WBozTN/5kmMm3th0syuYU1t8Xw1f/h2ELu5NrkUPhngfl3Yew3oSRP
	 MdP5j3MC85/5lzm4YbnsCGFuaP0P85UgRPiu07T5gY6PBOowKhKrPlojjkEji9l2c7
	 86WMoqshqGYFRJuqjmyDMuBMv5lmht9QgjFeVVwj0SWcijbAaxFA9OMQdTBVB4JQJO
	 17hJRbUoUKnKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B47F36077F;
	Mon,  9 Sep 2024 12:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33DF01BF386
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 12:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FB1440239
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 12:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tHApLL2pm_ie for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 12:00:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12B6340226
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12B6340226
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12B6340226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 12:00:51 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-1MfIUoFlMryBf5qdrnB9lg-1; Mon, 09 Sep 2024 08:00:49 -0400
X-MC-Unique: 1MfIUoFlMryBf5qdrnB9lg-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42cacf627caso3452895e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Sep 2024 05:00:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725883247; x=1726488047;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cpdpP7XrkguLKZMcKqCgqEC63d0bhaIvdu7qQWH0DOc=;
 b=mLF85SMSkVMEVQf8escglb/PBizbuhRm2drVbUk/3ogw0pOqPd7I4um3zFzz20+zVF
 VwjSoRRxKHee62JRNOS+EGnMYOxyF+Ma1eXNFVIkV1XUVBcdy+4A6KZ9ornsDlQhv5Hq
 60LkxWfrYPMSvqvWlNsB2OQ2PsT4GmscwsrH2/t/1hv6uSsOc5ey6h73AHaqraTFDr2p
 clvurx/7VZu0sqB8CtQ2d32yUsBKzyQ4375GaW4KVrk1AsstDeV2oXM4EX8+XWPJlont
 6zlHry9OeJUIOqRnDVXJ//8oBL5fvKxiP/FYaIEccXfb890ImMSiSj/CjNQaIu90Ledr
 eT3g==
X-Gm-Message-State: AOJu0Yz6Mvu4HGF+/uW0n5QZwQEJlXSjGgZUA/FlgLb0y5K++eEUua9Z
 p8yTKUanNQvkBdXIHI/V0XBoAaN72zZNEqzY9j2cRTWoB+5iHnyGYGk+w7YxqORTGShdlotjn0Z
 Q8FckPueSps7xwRuX9Ryh1D0aQwqTh6buoBmVBSbTNBSjnraudJ/8g6G9jlOnSJBF1HjyCIcR2V
 Yh+kuT0XtBrefm0pOYc4y8Lkg9LMvVP3B+dTgnrVuwFA==
X-Received: by 2002:a5d:6d02:0:b0:376:3ef8:61ab with SMTP id
 ffacd0b85a97d-37889674b4emr3542671f8f.8.1725883246963; 
 Mon, 09 Sep 2024 05:00:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG36uRgiMiQeJZrCdoqzAsKAJYknoQWtOsMkjl9vwLItGQzhdrhen6hvgl3oyzQgBl9WCYdYwtNcHVtjrvFO+4=
X-Received: by 2002:a5d:6d02:0:b0:376:3ef8:61ab with SMTP id
 ffacd0b85a97d-37889674b4emr3542642f8f.8.1725883245738; Mon, 09 Sep 2024
 05:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240731-filter-return-eexist-v1-1-5b03d444a423@intel.com>
In-Reply-To: <20240731-filter-return-eexist-v1-1-5b03d444a423@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 9 Sep 2024 14:00:33 +0200
Message-ID: <CADEbmW2AsD+pGR3YAB_d5yXLW4Fz1c74Org3t1uoaPyJd0BA7A@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725883250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cpdpP7XrkguLKZMcKqCgqEC63d0bhaIvdu7qQWH0DOc=;
 b=FSjHq7X9RyStiU20i6v+SEoPjmNTWc8U8w724bxO7BUckVyzJVtQW+5GsMugC0NjQS2gFe
 ZOiX3zkWyhNvf7RTfMGXIdqyqCdDe1TY336dITyCufPw7ppcR9hYrfebEyq6EA0Vj9ToGJ
 Ru+iHs0hqbXU4lpX8RUHBe2ySN7joq4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=FSjHq7X9
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting for
 filters shared by multiple VSIs
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 31, 2024 at 6:56=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.=
com> wrote:
>
> When adding a switch filter (such as a MAC or VLAN filter), it is expecte=
d
> that the driver will detect the case where the filter already exists, and
> return -EEXIST. This is used by calling code such as ice_vc_add_mac_addr,
> and ice_vsi_add_vlan to avoid incrementing the accounting fields such as
> vsi->num_vlan or vf->num_mac.
>
> This logic works correctly for the case where only a single VSI has added=
 a
> given switch filter.
>
> When a second VSI adds the same switch filter, the driver converts the
> existing filter from an ICE_FWD_TO_VSI filter into an ICE_FWD_TO_VSI_LIST
> filter. This saves switch resources, by ensuring that multiple VSIs can
> re-use the same filter.
>
> The ice_add_update_vsi_list() function is responsible for doing this
> conversion. When first converting a filter from the FWD_TO_VSI into
> FWD_TO_VSI_LIST, it checks if the VSI being added is the same as the
> existing rule's VSI. In such a case it returns -EEXIST.
>
> However, when the switch rule has already been converted to a
> FWD_TO_VSI_LIST, the logic is different. Adding a new VSI in this case ju=
st
> requires extending the VSI list entry. The logic for checking if the rule
> already exists in this case returns 0 instead of -EEXIST.
>
> This breaks the accounting logic mentioned above, so the counters for how
> many MAC and VLAN filters exist for a given VF or VSI no longer accuratel=
y
> reflect the actual count. This breaks other code which relies on these
> counts.
>
> In typical usage this primarily affects such filters generally shared by
> multiple VSIs such as VLAN 0, or broadcast and multicast MAC addresses.
>
> Fix this by correctly reporting -EEXIST in the case of adding the same VS=
I
> to a switch rule already converted to ICE_FWD_TO_VSI_LIST.
>
> Fixes: 9daf8208dd4d ("ice: Add support for switch filter programming")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/et=
hernet/intel/ice/ice_switch.c
> index fe8847184cb1..0160f0bae8d6 100644

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

