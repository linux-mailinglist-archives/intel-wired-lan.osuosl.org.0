Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C033E87BC5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 12:57:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FA9640AB9;
	Thu, 14 Mar 2024 11:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wkXM3Mh70j22; Thu, 14 Mar 2024 11:57:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81D68409F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710417448;
	bh=W6Yj68QAc/GDKe4pAWzzjDhY33mBI0iwde75NIqen9o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w8yCso4GRDImeLj2cUjasUEfVO+T3X/iziwzsl/UvKtE5bY4TfIsBRcOHTI81Olxx
	 8t5INiW9OV1lADidyllvW3UwZhb7BjXHqhzvhfsl+04CWyCC+bROV+nRowbU6IBANT
	 7Ea4Lg9rlH5ckoNTsUe0Nvd6pqkWSN5+8Y9Xx+boWVIPLWfMixwLZ2XVSjXHcs3ZVt
	 ZNW/crdW/HD50R8icSK/REdWO3Z5yi5bcw5PfIZcjfKeCqm00i+tzmvHyBiIph4YuX
	 fRyl6Qz3KdR/Skzc9VlWw/8JxLWGIylM4CeqfgqmEkSnoD9LYeCamT6SjKbJBbb2Is
	 JVI6jnHh1Nf8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81D68409F5;
	Thu, 14 Mar 2024 11:57:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 917E41BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 11:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BD6D60DFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 11:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hPa1Oqe2DBEq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 11:57:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9912760DEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9912760DEF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9912760DEF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 11:57:24 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-641-QJpmtcfUNUKGiOcZw1Fatw-1; Thu, 14 Mar 2024 07:57:20 -0400
X-MC-Unique: QJpmtcfUNUKGiOcZw1Fatw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a465b4e0dafso38977166b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 04:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710417439; x=1711022239;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W6Yj68QAc/GDKe4pAWzzjDhY33mBI0iwde75NIqen9o=;
 b=aZB2W+bAKQzN7nZ4wbq/pA1xi826B8WJjNqW1RS2NHfhBjOXOMiVxwxxbuCbWgf8jI
 xgSk4ras6Au5gqXCLWkXCY1PXm4nQ8XDVH+EvkPpipY+JZTm8c+Ok+n5hDE3LtECrQLw
 +CvfdHW9+wQCNvzCk74azV5kXlGmlHOVf62Ei/txAu5QUFAlIMTb1cOUZICLZ+r6y04b
 GdgywDopFuSdWs/08y/ldcXiL4VkMPoksuKC3FzmsLL/q+7Lim+tqO+eUrfwyHfC0hv3
 vVm7RFqqLBsz8ekpdFd+eapQs9ToYculqnwAMb3zW2NVkQEFRXyUwWmCVnHiWxoAIwxC
 1W+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQU1ES/IY5RTc9kqsDIYLUfoaVKCHBXYR9ejrX79ip7ntXplSZ+X6QYnxy/wt67QARqi5a+dqdRDrN2Urzn4RpOSIX8SoCz/j4Gr5zTnYENg==
X-Gm-Message-State: AOJu0Yxliz4W4BgWgrGIhTuHaVv7zUDrUVOyO0OsZD+cGr9/Q6Pk4xrY
 g3cjlMA2sZfa3QdNMiBEvIJHkzeQbCqHNXkeebAXEgO6H0vCjrZgNWBxLdEVq6nuEk0ujMHn8ly
 CM6DMJ7cLNb+AoRlxnPTQ457d8IOZyRX+DpIH364IzjlOGP954jVWXtf9d3l5Jbqn1wy3zNI9rn
 k4SOVwxvzvfFkkI/jcdNjhSUpfBQVMJWO791C/JP+bPQ==
X-Received: by 2002:a17:906:1194:b0:a45:c1a0:5c07 with SMTP id
 n20-20020a170906119400b00a45c1a05c07mr908077eja.17.1710417439438; 
 Thu, 14 Mar 2024 04:57:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDd2Jv4Umtbk8PWZFo/vG9CwetRXLttChfYOuW/Phrx3fnFIjOrGAyZYjYrVlq16O3RjQTW7e3G7Su6kU5hIw=
X-Received: by 2002:a17:906:1194:b0:a45:c1a0:5c07 with SMTP id
 n20-20020a170906119400b00a45c1a05c07mr908069eja.17.1710417439108; Thu, 14 Mar
 2024 04:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240313135618.20930-1-ivecera@redhat.com>
In-Reply-To: <20240313135618.20930-1-ivecera@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 14 Mar 2024 12:57:07 +0100
Message-ID: <CADEbmW1vis35ACawye9d2S11NHA-Zpemv1m_+6eurkroLCtqqQ@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710417443;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=W6Yj68QAc/GDKe4pAWzzjDhY33mBI0iwde75NIqen9o=;
 b=dPSXTrzIMoV7B6aeCwoSvQ9J2gBNxTwLmLltloXuFQgBEAJvnktGnu3ySRx7ZAveTxlbYh
 bi4y/01xbBlwWQ8racZ48YdTtc6IU7hvXUi7IIwIlmAahqZ62JB4zJ6XE108nPkJzyQYn6
 eRCbYw2FE6hDOXwkX01pBh7stmKhpW0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=dPSXTrzI
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 aleksandr.loktionov@intel.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, horms@kernel.org,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 13, 2024 at 2:56=E2=80=AFPM Ivan Vecera <ivecera@redhat.com> wr=
ote:
> Commit 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove
> administratively set MAC") fixed an issue where untrusted VF was
> allowed to remove its own MAC address although this was assigned
> administratively from PF. Unfortunately the introduced check
> is wrong because it causes that MAC filters for other MAC addresses
> including multi-cast ones are not removed.
>
> <snip>
>         if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
>             i40e_can_vf_change_mac(vf))
>                 was_unimac_deleted =3D true;
>         else
>                 continue;
>
>         if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
>         ...
> </snip>
>
> The else path with `continue` effectively skips any MAC filter
> removal except one for primary MAC addr when VF is allowed to do so.
> Fix the check condition so the `continue` is only done for primary
> MAC address.
>
> Fixes: 73d9629e1c8c ("i40e: Do not allow untrusted VF to remove administr=
atively set MAC")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers=
/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b34c71770887..10267a300770 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -3143,11 +3143,12 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_v=
f *vf, u8 *msg)
>                 /* Allow to delete VF primary MAC only if it was not set
>                  * administratively by PF or if VF is trusted.
>                  */
> -               if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
> -                   i40e_can_vf_change_mac(vf))
> -                       was_unimac_deleted =3D true;
> -               else
> -                       continue;
> +               if (ether_addr_equal(addr, vf->default_lan_addr.addr)) {
> +                       if (i40e_can_vf_change_mac(vf))
> +                               was_unimac_deleted =3D true;
> +                       else
> +                               continue;
> +               }
>
>                 if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
>                         ret =3D -EINVAL;
> --
> 2.43.0

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

