Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AF43EDE0E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 21:47:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8B024044D;
	Mon, 16 Aug 2021 19:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OTY6HPE7x13m; Mon, 16 Aug 2021 19:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 432154045B;
	Mon, 16 Aug 2021 19:47:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7BC1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 19:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88302402C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 19:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7eE7tQenck10 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 19:47:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A0C540155
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 19:47:00 +0000 (UTC)
Received: from mail-wr1-f45.google.com ([209.85.221.45]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MeTkC-1mpsjm0qyi-00aVeb for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug
 2021 21:46:58 +0200
Received: by mail-wr1-f45.google.com with SMTP id q11so25158083wrr.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 12:46:57 -0700 (PDT)
X-Gm-Message-State: AOAM5315YUDuQ2mIbfahOudgn2+Hdgv2eYC4mWYxld8xG7jp28V4ic5h
 fNBTH919PBwHDAJbP3Or5AbdG8KiuLvREGifkwI=
X-Google-Smtp-Source: ABdhPJz5KjKHIA5/4EOwJb7Ma2A00qBnJujFrxAsE6LdiU6qcLYPR0auEFNX3ZzUUJs3kVABWL/CCX9eg5zq7HVAbSw=
X-Received: by 2002:adf:f202:: with SMTP id p2mr103174wro.361.1629143217650;
 Mon, 16 Aug 2021 12:46:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-5-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210816160717.31285-5-arkadiusz.kubalewski@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Aug 2021 21:46:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0N3N3mFvoPj_fkqOY30uudJceox=uwSW+nd0B0kf8-ng@mail.gmail.com>
Message-ID: <CAK8P3a0N3N3mFvoPj_fkqOY30uudJceox=uwSW+nd0B0kf8-ng@mail.gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
X-Provags-ID: V03:K1:Ba/l4bJTnDQWFQq4wqX5L4gDfl4o8bGRY5H26kgLx3FXUywUNjb
 c3FN1VnvQulVv/SqNOKo6npCJlgt03GnaP5b9NpJZU3/DusWiHHrHJEj7idXOHAmnOOERDr
 cjxwNauOHOVxvOR8Xud/SP/M4fLQY0Vcd0e0R/DKWEqQUOt0W4NkyejxMwD/FSc/B8eBXwe
 MJcywLv346wYQJsNxvEqw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:WmDUcyzPOAQ=:luBwNL9cTF53w/gaQxso55
 SV7dBUFPcnW8XjsbhF+hWgEJ2tRfitDiqRIGuHNRoNOqjiajQ02Yb//g9Cojkg6x6nTvHlSOv
 lMr8kIWJen+ZAY3apeHoymixI/SUr/hdoyoMVzJ2sVKc+el6wCp5Zeg7sdxZwfREV72ErxvlJ
 /JwfrDFupHx5k44QckMTyX2wMYpg1q9n0AaGMAKqx7uh+ZhDq+dxkcr6FtnE/McAlR5y1Qh76
 Uy9CI9gkK9jRkMCTbrBxAJA4jDJurEHersfdyMgih2oS0lQNDc8JP2TvRtipLwZH7oEqAj3yl
 qtipDG6P4UeTKkCfjWBzLJHI8HUi2QWaatknLQEwkXlubNFjjHpL6Y92Lst4md79jPdWxVvCo
 2trIA5sqoZfK+GV5TZnH7fl3z+CvZaFc/5NWqo0jBj3wzkdIPfqZbGo8TILxR8nDL3NdC/5YL
 O7H9VPsbn0CNMGfGQS6rf5Vjpxyi7ylPpMUOc3HHIESnIYh+kg+3HLaQNSa53Sk0KNym/UgJM
 qkExlYi1GNI4e2uP/xQegNN8yI9HHxSXah510AU3P+WdT3521DnDbej4ueJd37AkUDAOdxi3v
 DezvEi2pmVItbjSIigtN3tFhw2SzTLk3QL7dc6CyMv8v8ea1Ws2XAvj/tA/HCzTITU7u+WuNM
 tlrINMU4hpyiD5btzS46G3rn7WTgAtpQH3B0o6e0Qm/EKrKfb0C9BDgTolZagk1eN4BrJRC5y
 OuwoyuLnDezrm1XYqgndz8ADqznkAujgIWw8XPMlZ/lU3o5FDb6g8js87Ts6nb4YtMYaUYrWf
 XDITt1lOgHfxaEm4HbKGSqZsaaXCRqXvh9IlPhiG1Uh5ki17jajtHiN9Dj6k4YZr96ReJWaTl
 0DVqPsPSnaFecJ6K6IsfD5OERwDeRCbHa5cT+Pd2w8EJS2JftwuOXZWb1wfrfLibSHwkJmtk6
 I5oNmQGubiLGQYRFfDU/N87I39HAaQK2ZgOG8uQorxnPhGlKYnXxa
Subject: Re: [Intel-wired-lan] [RFC net-next 4/7] net: add ioctl interface
 for recover reference clock on netdev
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
Cc: cong.wang@bytedance.com, Arnd Bergmann <arnd@arndb.de>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Colin Ian King <colin.king@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 16, 2021 at 6:18 PM Arkadiusz Kubalewski
<arkadiusz.kubalewski@intel.com> wrote:

> +/*
> + * Structure used for passing data with SIOCSSYNCE and SIOCGSYNCE ioctls
> + */
> +struct synce_ref_clk_cfg {
> +       __u8 pin_id;
> +       _Bool enable;
> +};

I'm not sure if there are any guarantees about the size and alignment of _Bool,
maybe better use __u8 here as well, if only for clarity.

> +#endif /* _NET_SYNCE_H */
> diff --git a/include/uapi/linux/sockios.h b/include/uapi/linux/sockios.h
> index 7d1bccbbef78..32c7d4909c31 100644
> --- a/include/uapi/linux/sockios.h
> +++ b/include/uapi/linux/sockios.h
> @@ -153,6 +153,10 @@
>  #define SIOCSHWTSTAMP  0x89b0          /* set and get config           */
>  #define SIOCGHWTSTAMP  0x89b1          /* get config                   */
>
> +/* synchronous ethernet config per physical function */
> +#define SIOCSSYNCE     0x89c0          /* set and get config           */
> +#define SIOCGSYNCE     0x89c1          /* get config                   */

I understand that these are traditionally using the old-style 16-bit
numbers, but is there any reason to keep doing that rather than
making them modern like this?

#define SIOCSSYNCE     _IOWR(0x89, 0xc0, struct  synce_ref_clk_cfg)
/* set and get config   */
#define SIOCGSYNCE     _IOR(0x89, 0xc1, struct  synce_ref_clk_cfg)
/* get config   */

        Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
