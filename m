Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2508B8791C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 11:18:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1471F405A3;
	Tue, 12 Mar 2024 10:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WhpncNny4sm2; Tue, 12 Mar 2024 10:18:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3586E4059E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710238713;
	bh=v/TtoKF7cuacbpGcpjgtdgMi1EiHHySKw9WaAnGkjzM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SPVYkXXn6uvwz5FhrhE2FvNiv5/AFF3+eWXwkv6hqMMzA+S5E33Kfeh+JTY8gyHcF
	 lm67h7kxKX2c69S1RDP01eb111N61x6GzefxgaAx0iq3P3SLtoCYuA0EsoxazOfiV3
	 hncB98k5d5T9gFxp01HP7XCOUTDGrZZNx3a+id+H09JAZ0DWiU15MVlbPqVUuVpHlN
	 U1KEQxijbZK8Eg7oZQdFAXp1XXvRNkRvyKj71Gb71oK/MZr28VmpeVbd/LZI6e/kWV
	 AT6X/Ddr/g4VQI9r9DUs1VG7DYFYN1zx3X1nalklwXmc9dCnKxJXw0JIsRBW/svwpO
	 3NeNxCuiLZQHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3586E4059E;
	Tue, 12 Mar 2024 10:18:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46DA21BF34F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 307654048C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qULbNEVOA66O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 10:18:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::92d; helo=mail-ua1-x92d.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F5E5404A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F5E5404A8
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com
 [IPv6:2607:f8b0:4864:20::92d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F5E5404A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:18:30 +0000 (UTC)
Received: by mail-ua1-x92d.google.com with SMTP id
 a1e0cc1a2514c-7db797c5c93so1901371241.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 03:18:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710238709; x=1710843509;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=v/TtoKF7cuacbpGcpjgtdgMi1EiHHySKw9WaAnGkjzM=;
 b=Zxmr17y65a0EVAe0Q9JfpKF6UEexqZA2DzrYb0B0WnkrhrQ1cYL1TI1yH/WLM/Kdh4
 9oF0F2IOAD0fA9hdAoNoOP7zK3fHSOCJ+wQGDcUp7Zj2sSVI2fkec5WB64QboEzgWtBZ
 tq1u2FlUb0pUsXyIxf0Qf8FWKzRyH2v7GTlp6XTscUBD6MiaMG1tMB7a5YZxuUfJf/Bi
 5hrjaxQmo1TfU6T5jYw/bCEA1N6ro21Rb4T7Jn9GGbgudrp3WZo3c03ndjrQAZw2lTW9
 SW/4fwXfwqFZm9tnkZTlAS/+uQ2dDw00mcNK4KdjP6RvkFr/3lw02Fls4wQzK3S4MTiv
 KWlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNofopCpOmpy4zItr8zD2kg6d5WKnd5LL1CPLBJIWk/pEUG+oTMcuD7azNZnniV6RJ20EhFiWIb7RE/q+zydnoYfGRJx/z7mtHImhTPi1AyA==
X-Gm-Message-State: AOJu0YxIVWSBsAQX+XcC0JoAnGNbEj4bExZoEr/DsgbZGBiy48CIZsvH
 0/zahQT5j8cGi4XqS7xZOxLv6JP/qNFCRdigoPhgQ9OGV1TsK7pOJ4ZvjEYV0vOWBb5umULptgK
 5Ooe7jsCByuuuMEXVUe9krxQitlw=
X-Google-Smtp-Source: AGHT+IHg34ksh5Vb8nFOPwXj8ahKVbhIjUruuiOlKBdvSNe99Anup77tCH67cK21OhJVVEyLM9Hc3BDc70tkwVkn0OQ=
X-Received: by 2002:a67:f041:0:b0:472:64f5:f0a5 with SMTP id
 q1-20020a67f041000000b0047264f5f0a5mr5959821vsm.18.1710238708956; Tue, 12 Mar
 2024 03:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240312094259.770554-1-e.velu@criteo.com>
 <fd37860e-306f-42bf-9a1d-e4d98ddf338c@molgen.mpg.de>
In-Reply-To: <fd37860e-306f-42bf-9a1d-e4d98ddf338c@molgen.mpg.de>
From: Erwan Velu <erwanaliasr1@gmail.com>
Date: Tue, 12 Mar 2024 11:18:17 +0100
Message-ID: <CAL2JzuzjRTHzKPVU9+zfFeEgfDQPeRDUuaUjsqgDfgQ865en8Q@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710238709; x=1710843509; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=v/TtoKF7cuacbpGcpjgtdgMi1EiHHySKw9WaAnGkjzM=;
 b=Bfjpn7s2IwSBX7mnv9xKRNwZxzxfDBOTK8Ou1MIO5Q5juJb6d6XCEXDi8jzTfXo6ER
 cWicKbEP9oChIf4VfwP96Qph1ZXFKbMdvo1bqMyvpf6/WymsPi6p4WwolZg0sBd0KyGT
 FINH33YzaByp9jRjaFbA/+lYrefYOCQ5IJVyc+SiHo0T61RYr1CF1yXMYKAmld5qsQRv
 O/6oK7G9GyGp48CSdMxb2+ZGOTUw0AjOatsDNlOriKygi8a7UzczwNfEuvRHtsL22eHh
 jqAY4KiNDqxk1jjNjCOyIl2h4BuW+HFDNsUEs0wzAc9HbDleD4nw8QhQOlCyDBztpRN+
 ClCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Bfjpn7s2
Subject: Re: [Intel-wired-lan] [PATCH v3] i40e: Prevent setting MTU if
 greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Am 12.03.24 um 10:42 schrieb Erwan Velu:
> > Commit 6871a7de705b6f6a4046f0d19da9bcd689c3bc8e from iPXE project is
> > setting the MFS to 0x600 = 1536.
>
> Please add a link, as most people do not have the iPXE archive checked
> out. Maybe also add the commit message summary.
I will, thanks.

> > At boot time the i40e driver complains about it with
> > the following message but continues.
> >
> >       MFS for port 1 has been set below the default: 600
> Hmm, but 1536 > 600. So the log message is incorrect?

As mentioned earlier in the commit message, the 600 is 0x600 = 1536.
I can offer a patch to report it in decimal or add an explicit 0x prefix.

> > If the MTU size is increased, the driver accept it but large packets will not
> accept*s*
Fixed.


[...]
> > At least, this commit prevents setting up an MTU greater than the current MFS.
> > It will avoid being in the position of having an MTU set to 9000 on the
> > netdev with a firmware refusing packets larger than 1536.
> Maybe add the new log message.
Done.

> One last formal nit: Please use a line length limit of 75 characters per
> line.
Done.

> > +     mfs = pf->hw.phy.link_info.max_frame_size;
> > +     max_mtu = mfs - I40E_PACKET_HDR_PAD;
> > +     if (new_mtu > max_mtu) {
> > +             netdev_err(netdev, "Error changing mtu to %d, Max is %d. MFS is too small.\n",
> > +                        new_mtu, max_mtu);
>
> The other log messages capitalize MTU.
Yeah but the exact previous one was in the same case. Shall I bump all
of them to upper or lower cast ?


> The rest looks reasonable.
Thx for the review.
