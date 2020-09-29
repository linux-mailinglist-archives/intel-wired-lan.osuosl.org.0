Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C777627D241
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 17:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38493842C3;
	Tue, 29 Sep 2020 15:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbyuA8iQD4M3; Tue, 29 Sep 2020 15:13:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22BEA85DC4;
	Tue, 29 Sep 2020 15:13:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB66B1BF868
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2A1087059
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkMHa6BEtyiM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 15:13:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 676398704B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:13:01 +0000 (UTC)
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kNHJL-0005XQ-Ms
 for intel-wired-lan@lists.osuosl.org; Tue, 29 Sep 2020 15:12:59 +0000
Received: by mail-pg1-f199.google.com with SMTP id s2so3321604pgm.18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 08:12:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=chf6sW9f/7H17vcG0LBXg02B+gAENr3JISCPSgXJJLo=;
 b=EwMY/Tgz7QTsTYRL9vXNbVgj87B6/CYruEq06CVmBzSgjGaUptq49fcGD8YNmCdSpJ
 Xe3Ws+dRm6ZqZ31JOzIGsoMBWIu+seKCLe8kQlccDpIYuXOpk88Qckf8g8hKO+guB6V2
 JLLntcuo2akksrWQMAwbPxBP7KWHwK459+SlxIJnXFWmNmMZNwowJhTnjWXam4pB0B1w
 iI/47Bw0j3I/IdIzg8C6ojflqLyCtIu1s/lNFM4yMj020joMQGrUb2o6Gq39ks2gXM+Q
 yQAT266n92Ymywl778oPpY9rM1sbbc+ZlJyxizP3wxiCAbJ+ErErkeCjgng8o76tejjX
 EMWA==
X-Gm-Message-State: AOAM531UpgQ7ijmKu2qc9pUdggrOc2NTDHTGbGKiU6EghmTh/bBu2Q2y
 o6ZGiDxWcstjBs0EjbBuR5m2wmhfQjzk9Ulrcdjbc68rXoVLdRBFFESQpgaXs6vmZ0hAMTz7ufg
 sUhi9rWdvgcdwRaiBepNRR4f335aEDnBYEFJO1/0WAKk76R4=
X-Received: by 2002:a62:cd46:0:b029:150:ddeb:646b with SMTP id
 o67-20020a62cd460000b0290150ddeb646bmr4303298pfg.27.1601392378319; 
 Tue, 29 Sep 2020 08:12:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy0/olQ5yxz8/5kXGaM2e+jOh6gkWSTzzcliWV4N9POlON3DttDBggKkxhU1hGl3+7ZDtOILg==
X-Received: by 2002:a62:cd46:0:b029:150:ddeb:646b with SMTP id
 o67-20020a62cd460000b0290150ddeb646bmr4303259pfg.27.1601392377925; 
 Tue, 29 Sep 2020 08:12:57 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id f4sm5595689pfa.125.2020.09.29.08.12.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Sep 2020 08:12:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <f8bd6a07276a4289b102118a132bd793@AcuMS.aculab.com>
Date: Tue, 29 Sep 2020 23:12:54 +0800
Message-Id: <EF57895C-2B0D-4EE1-9A47-E3E07C04C9FB@canonical.com>
References: <20200924164542.19906-1-kai.heng.feng@canonical.com>
 <20200928083658.8567-1-kai.heng.feng@canonical.com>
 <469c71d5-93ac-e6c7-f85c-342b0df78a45@intel.com>
 <30761C6B-28B8-4464-8615-55EF3E090E07@canonical.com>
 <345fffcd-e9f1-5881-fba1-d7313876e943@intel.com>
 <3DA721C5-F656-4085-9113-A0407CDF90FB@canonical.com>
 <f8bd6a07276a4289b102118a132bd793@AcuMS.aculab.com>
To: David Laight <David.Laight@ACULAB.COM>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [Intel-wired-lan] [PATCH v4] e1000e: Increase polling timeout
 on MDIC ready bit
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Sep 29, 2020, at 23:11, David Laight <David.Laight@ACULAB.COM> wrote:
> 
>> Hope we finally have proper ME support under Linux?
> 
> How about a way to disable it.

This will do, too :)

Kai-Heng

> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
