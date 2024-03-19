Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8110287FB31
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 10:54:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10B0960737;
	Tue, 19 Mar 2024 09:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRpIfvYs20MJ; Tue, 19 Mar 2024 09:54:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C5AF60658
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710842080;
	bh=Hib0zDgjX0wwE4G3s6Q4ROR6T+E9FLihqyZ1EtpwmMY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LH9dPuEl1eft8H1sq7M/o4aErfs/QbkZ5WFwMmXPv+lrOYvLGb4CsbXow0jLrrb8n
	 RH5lHp55hM0LQXpR+dBKZjZ9prXSMUzJfapJCL/YRTBB9Am4FBNvLvfCa5TQBamt2T
	 HckTOfYCvvzqGmrBTvLhOfdpWd6XyypY0wftjhhfsSOoiTZKHZY5CMv+bypCtGjeYB
	 5HJ/+2ismLR2V2eNYRKDglzX15CrcB9b6BIfXdOQYptyKbaFSQWAQTq6SrcJWTvSql
	 xw3GPrFm5pk8KbzKnoXYBI7eWwzflO2XjnXwSZSFFtDdQzf0uI6MPNVg4rguUluQvs
	 tFrWahUnspXhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C5AF60658;
	Tue, 19 Mar 2024 09:54:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58AFC1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 09:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5100360658
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 09:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2By4TmozKEUU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 09:54:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 87B2560620
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87B2560620
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87B2560620
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 09:54:37 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-376-kpzgvQj9MFmlvLsR9aULKw-1; Tue, 19 Mar 2024 05:54:33 -0400
X-MC-Unique: kpzgvQj9MFmlvLsR9aULKw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a464f5e2499so236844766b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 02:54:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710842073; x=1711446873;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Hib0zDgjX0wwE4G3s6Q4ROR6T+E9FLihqyZ1EtpwmMY=;
 b=ETvzGXX7AYhRoZSPJu53hCYkP7Rw295XVy+g63awf5BF4wu/yV9mDG7vA8r4cMh3kS
 iwoAkrlOhqa6tDs1TR3kyhaUQ9bFV9J0cMWVdMXbE4wcg443uUUu+ACMesdEX8mCsjfR
 kJxqAh7kcGz+t1mm7i/1UrdaVsHECIAyfmFedu5rHF6J0/gkirC2UkW5v6/cqLBej36P
 HS3Tz7jmDyWZbhBQ9ga0R5P/OWknOHMJUV5gZi0/YqvQXH2TvkN2UMIBMq9NNjT6vz4W
 A2zkukj5HefoM4dN7D0XR2jy6+vGyMOWegJ+ebxJH1C/sYrClxNTdG+DxKZOZa7HHHRZ
 KWow==
X-Gm-Message-State: AOJu0YxdsiIknaM3XU2mtG0v2y7pZLoepl+BfjK1CNd3aGlpGpnX9wDv
 nL1tIK84W99oJEAqvvY2CI7L+gTBq+fYiZGqnpMq8ctFbb6I9ZCjYI0HZCRul+xh8qq37b2SzCy
 eUvS+jDKFMu808T/l6q9JHOiGPkoJl+UGYB+ZvdvXzXQMAO3GaB/UvMHYH5RzUv3i7+RIrjFUkR
 Ynrs1HuJiBFVo22DeoKkxcmyBPY6T8jGWXIO9M5I17Jg==
X-Received: by 2002:a17:906:2310:b0:a46:7e08:37e8 with SMTP id
 l16-20020a170906231000b00a467e0837e8mr1225439eja.53.1710842072877; 
 Tue, 19 Mar 2024 02:54:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6BjyEnKy2Dpuf1Q6n6FNGZtdfuIfYcEAZFAZvpsZOgYjjHe0uXoAnkUBurhDlGn2w1OypmrxEZKsO7bB1uBs=
X-Received: by 2002:a17:906:2310:b0:a46:7e08:37e8 with SMTP id
 l16-20020a170906231000b00a467e0837e8mr1225428eja.53.1710842072689; Tue, 19
 Mar 2024 02:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240318143058.287014-1-ivecera@redhat.com>
In-Reply-To: <20240318143058.287014-1-ivecera@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 19 Mar 2024 10:54:21 +0100
Message-ID: <CADEbmW02H_6h6cdXher4Ua_ZzTduF_gF-b8ADRSamOms--HZbQ@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710842076;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hib0zDgjX0wwE4G3s6Q4ROR6T+E9FLihqyZ1EtpwmMY=;
 b=Fmr1/mOiY7xtpUOn5VhBrVoT1kSZNCE1oZA7XoxQEEypbVHsnJhA3oZRm41qZtaDUuG3F0
 DH+PTGjW4buyodkYm+eidP6OiCtuyoITiVaj0k0xFYkXl7lC2Y9q0GjMy002Yw/DuORKGl
 sX9n8d5afY4GhKi9E9h78J4rb/OChaU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Fmr1/mOi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/7] i40e: cleanups &
 refactors
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 18, 2024 at 3:31=E2=80=AFPM Ivan Vecera <ivecera@redhat.com> wr=
ote:
>
> This series do following:
> Patch 1 - Removes write-only flags field from i40e_veb structure and
>           from i40e_veb_setup() parameters
> Patch 2 - Changes parameter of i40e_notify_client_of_l2_param_changes()
>           and i40e_notify_client_of_netdev_close()
> Patch 3 - Changes parameter of i40e_detect_recover_hung()
> Patch 4 - Adds helper i40e_pf_get_main_vsi() to get main VSI and uses it
>           in existing code
> Patch 5 - Consolidates checks whether given VSI is the main one
> Patch 6 - Adds helper i40e_pf_get_main_veb() to get main VEB and uses it
>           in existing code
> Patch 7 - Adds helper i40e_vsi_reconfig_tc() to reconfigure TC for
>           particular and uses it to replace existing open-coded pieces
>
> Ivan Vecera (7):
>   i40e: Remove flags field from i40e_veb
>   i40e: Change argument of several client notification functions
>   i40e: Change argument of i40e_detect_recover_hung()
>   i40e: Add helper to access main VSI
>   i40e: Consolidate checks whether given VSI is main
>   i40e: Add helper to access main VEB
>   i40e: Add and use helper to reconfigure TC for given VSI
>
>  drivers/net/ethernet/intel/i40e/i40e.h        |  29 ++-
>  drivers/net/ethernet/intel/i40e/i40e_client.c |  28 +--
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   3 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |  36 ++--
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  29 ++-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 199 ++++++++++--------
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   6 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  16 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |   2 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  14 +-
>  10 files changed, 210 insertions(+), 152 deletions(-)

Series looks OK to me.
Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

