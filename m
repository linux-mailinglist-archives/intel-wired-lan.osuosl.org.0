Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 521449AD110
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 18:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AB7D6070A;
	Wed, 23 Oct 2024 16:34:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFb19FOP53Jp; Wed, 23 Oct 2024 16:34:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FBAD6075A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729701281;
	bh=nDjPu0HKkK5aBQcXZHwZc+01c/n/1MIBzXvu3KvRUj0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DwLpwWz5ozQNoNZc/ehLczb4RHbtODRXGb32+tj6/gvi/Ubl1ODCqWwOuwA6cLzuW
	 9Wfb6U8pC2xdxdXDY7H5cHKEoxrmSOKpQuFbI/VlNk2GCigbEF6yOR2uzGp/CzD+FI
	 dzACK2Z/r0tBhfwvuK08TZfnfOEMgHG4hKW1yS3iY4WoQFVf1jMmADRQt6Zn4U0N+/
	 BaNejD2oz7FaA7pt3YRkKLXvLK9afcn2FxWWWRAap0DaH00V4CGIgQj15GlSI1fZ+H
	 14NYzLlBQVFPP/G7n1tTiBgui1Z2hpVhqhx6AW0jQmyJFukTUxbvPrKE76tM4hD20L
	 wVUR8fCDuT9/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FBAD6075A;
	Wed, 23 Oct 2024 16:34:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E68192072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 16:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BED9181026
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 16:34:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QSeJsFZumyte for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 16:34:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7A8780E57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7A8780E57
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7A8780E57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 16:34:37 +0000 (UTC)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-175-eYiB8dW-PEirGm-K8wBZ7Q-1; Wed, 23 Oct 2024 12:34:34 -0400
X-MC-Unique: eYiB8dW-PEirGm-K8wBZ7Q-1
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-71841b0ee34so318268a34.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729701274; x=1730306074;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nDjPu0HKkK5aBQcXZHwZc+01c/n/1MIBzXvu3KvRUj0=;
 b=ThVG2dXHGSy7dkmXqWm2qkmucgJRrSjz3C4BueFgC+3UDuqwLh8ZiPLJBrYm85PeHs
 SF16Yt/oEc78HSNPhVpGJwBPSLAdzMHoGeLZsBwfKm2BEmyRUiWxBhysofBa90y+QYkN
 8U1MOzFWJhM0yvgI7fnZ5/PDzs1q/YbL9qtcXvJtSm3ZFm91C8lf+CcuijfU0xulrOu0
 8cLZARv9X7NXNmrO4dkvxGi3TGAFrlNVVU+W8A4an8TJwZShDSakY+CQ8Ys4cOfRLkpT
 FejqaCrF1ClQt1aznea9QPADPeGb1w6lJGYP15kbxdyRSKXMV4AiuPQBfI3oUVpQBgAy
 bQrQ==
X-Gm-Message-State: AOJu0YzHaEGSyR7SyZscmHLbuVqaRc2OwfW6vo2wehPS2e9aDyLXxFGy
 T5EHzdMqYx4QtacS0hzwC9TUowDz5U5tyuvVxRwSuStAIkqs8fxdlN7nHD8GbKBp8zINlCyU7lj
 /Bv6f+aeAF+fLFvaFHUDDPMDA24jxhCEAtQMpfuu2COArKqEYR9MuHgZ9oN3370xXa6oinl3sD5
 uhVV8hZvJsKK8R7KgxN3cWeJihnomDnZaCYUK6az5Bow==
X-Received: by 2002:a05:6870:15c4:b0:26c:641a:871c with SMTP id
 586e51a60fabf-28ccb61e731mr808296fac.9.1729701273917; 
 Wed, 23 Oct 2024 09:34:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWi8CFeAzIYmDe8SJ56G9u/jtICEOTkvzKOLeMPcGdhr2tyyipF8GsKZJbemg9coQAABzBECoZ22L8YfYLVJs=
X-Received: by 2002:a05:6870:15c4:b0:26c:641a:871c with SMTP id
 586e51a60fabf-28ccb61e731mr808290fac.9.1729701273573; Wed, 23 Oct 2024
 09:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 23 Oct 2024 18:34:21 +0200
Message-ID: <CADEbmW2NRmYZvx7+yki8MR0tX+OzZovAYO-u+o6adHdYyaFn9w@mail.gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1729701275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nDjPu0HKkK5aBQcXZHwZc+01c/n/1MIBzXvu3KvRUj0=;
 b=e9nfIOcETdsq+4P7ptzRs/Qv5hHA70h7Nbfz1bNbBHNeUBkMmAVdDL4RGwr8txIPxdoyIs
 M2DdMZicTAsOcU5SIWN8x/wixCd9lhNW6ZZjwPd1UbXk122QYWRswH5oJYsPCSl3nFY0rp
 E/nNKX14SgoxtiBRE2ulQBf1XAMARuM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=e9nfIOcE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition
 by adding filter's intermediate sync state
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 16, 2024 at 11:30=E2=80=AFAM Aleksandr Loktionov
<aleksandr.loktionov@intel.com> wrote:
>
> Fix a race condition in the i40e driver that leads to MAC/VLAN filters
> becoming corrupted and leaking. Address the issue that occurs under
> heavy load when multiple threads are concurrently modifying MAC/VLAN
> filters by setting mac and port VLAN.
>
> 1. Thread T0 allocates a filter in i40e_add_filter() within
>         i40e_ndo_set_vf_port_vlan().
> 2. Thread T1 concurrently frees the filter in __i40e_del_filter() within
>         i40e_ndo_set_vf_mac().
> 3. Subsequently, i40e_service_task() calls i40e_sync_vsi_filters(), which
>         refers to the already freed filter memory, causing corruption.

I think an important detail is missing from the race description. I am
guessing it could happen like this:

1. A thread allocates a filter with i40e_add_filter().
2. i40e_service_task() calls i40e_sync_vsi_filters(), which adds an
entry to its local tmp_add_list referencing the filter. It releases
vsi->mac_filter_hash_lock before it processes tmp_add_list.
3. A thread frees the filter in __i40e_del_filter(). This is while
holding vsi->mac_filter_hash_lock.
4. The service task processes tmp_add_list and dereferences the
already freed filter.

Do I understand the race right?

Michal


> Reproduction steps:
> 1. Spawn multiple VFs.
> 2. Apply a concurrent heavy load by running parallel operations to change
>         MAC addresses on the VFs and change port VLANs on the host.
> 3. Observe errors in dmesg:
> "Error I40E_AQ_RC_ENOSPC adding RX filters on VF XX,
>         please set promiscuous on manually for VF XX".
>
> Exact code for stable reproduction Intel can't open-source now.
>
> The fix involves implementing a new intermediate filter state,
> I40E_FILTER_NEW_SYNC, for the time when a filter is on a tmp_add_list.
> These filters cannot be deleted from the hash list directly but
> must be removed using the full process.
>
> Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC=
 Address as key")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 change commit title, removed RESERVED state byt request in review
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h         |  2 ++
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c    | 12 ++++++++++--
>  3 files changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/etherne=
t/intel/i40e/i40e.h
> index 2089a0e..2e205218 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -755,6 +755,8 @@ enum i40e_filter_state {
>         I40E_FILTER_ACTIVE,             /* Added to switch by FW */
>         I40E_FILTER_FAILED,             /* Rejected by FW */
>         I40E_FILTER_REMOVE,             /* To be removed */
> +       I40E_FILTER_NEW_SYNC,           /* New, not sent yet, is in
> +                                          i40e_sync_vsi_filters() */
>  /* There is no 'removed' state; the filter struct is freed */
>  };
>  struct i40e_mac_filter {
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net=
/ethernet/intel/i40e/i40e_debugfs.c
> index abf624d..208c2f0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -89,6 +89,7 @@ static char *i40e_filter_state_string[] =3D {
>         "ACTIVE",
>         "FAILED",
>         "REMOVE",
> +       "NEW_SYNC",
>  };
>
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index 25295ae..55fb362 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1255,6 +1255,7 @@ int i40e_count_filters(struct i40e_vsi *vsi)
>
>         hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
>                 if (f->state =3D=3D I40E_FILTER_NEW ||
> +                   f->state =3D=3D I40E_FILTER_NEW_SYNC ||
>                     f->state =3D=3D I40E_FILTER_ACTIVE)
>                         ++cnt;
>         }
> @@ -1441,6 +1442,8 @@ static int i40e_correct_mac_vlan_filters(struct i40=
e_vsi *vsi,
>
>                         new->f =3D add_head;
>                         new->state =3D add_head->state;
> +                       if (add_head->state =3D=3D I40E_FILTER_NEW)
> +                               add_head->state =3D I40E_FILTER_NEW_SYNC;
>
>                         /* Add the new filter to the tmp list */
>                         hlist_add_head(&new->hlist, tmp_add_list);
> @@ -1550,6 +1553,8 @@ static int i40e_correct_vf_mac_vlan_filters(struct =
i40e_vsi *vsi,
>                                 return -ENOMEM;
>                         new_mac->f =3D add_head;
>                         new_mac->state =3D add_head->state;
> +                       if (add_head->state =3D=3D I40E_FILTER_NEW)
> +                               add_head->state =3D I40E_FILTER_NEW_SYNC;
>
>                         /* Add the new filter to the tmp list */
>                         hlist_add_head(&new_mac->hlist, tmp_add_list);
> @@ -2437,7 +2442,8 @@ static int
>  i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
>                           struct i40e_mac_filter *f)
>  {
> -       bool enable =3D f->state =3D=3D I40E_FILTER_NEW;
> +       bool enable =3D f->state =3D=3D I40E_FILTER_NEW ||
> +                     f->state =3D=3D I40E_FILTER_NEW_SYNC;
>         struct i40e_hw *hw =3D &vsi->back->hw;
>         int aq_ret;
>
> @@ -2611,6 +2617,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>
>                                 /* Add it to the hash list */
>                                 hlist_add_head(&new->hlist, &tmp_add_list=
);
> +                               f->state =3D I40E_FILTER_NEW_SYNC;
>                         }
>
>                         /* Count the number of active (current and new) V=
LAN
> @@ -2762,7 +2769,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>                 spin_lock_bh(&vsi->mac_filter_hash_lock);
>                 hlist_for_each_entry_safe(new, h, &tmp_add_list, hlist) {
>                         /* Only update the state if we're still NEW */
> -                       if (new->f->state =3D=3D I40E_FILTER_NEW)
> +                       if (new->f->state =3D=3D I40E_FILTER_NEW ||
> +                           new->f->state =3D=3D I40E_FILTER_NEW_SYNC)
>                                 new->f->state =3D new->state;
>                         hlist_del(&new->hlist);
>                         netdev_hw_addr_refcnt(new->f, vsi->netdev, -1);
> --
> 2.25.1
>

