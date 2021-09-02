Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA433FEF12
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 16:02:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D566425AA;
	Thu,  2 Sep 2021 14:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQS0T60k4SzG; Thu,  2 Sep 2021 14:02:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD4EF425A2;
	Thu,  2 Sep 2021 14:02:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EAA11BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 12:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5CC3D40761
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 12:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bpRvwc8y4c4z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Sep 2021 12:15:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7510340511
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Sep 2021 12:15:08 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id v10so2568356wrd.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Sep 2021 05:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=7j7nB4bz0U6rGPR2j2cxwu9H5dcMMktJVbF8XIvEElc=;
 b=EDu3Yn4SqxC0QqH7agIuKw7l8mwFnx70Xh7Gc7ITKbjbF3nhppVVanBWeRgK9QT4Gh
 QBz16mBuW9f/QvFK8louw42qXTvQjqubt77IHCx/n2rAizfc1ZLkYdmrcsHqEFtOQ92P
 xqrC46XpVNWnzFH8Y21ifj3sAxWP9IUtXPD6JUOT1elVeuNPS41McsUYSohz5c1A+lNK
 IWYSeJeG4+V8e8mZHSEI4k/ItSFPxEhzN4EmUiPdo9uxAv7xblgkpjdP+JTcqXqFdpL7
 pJHzS1g+em82UMqauSNauHddEZn7CXebX/t7RbVE/al+qz0NYymgrjXaI/0s3e+Sy4Ry
 MyGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=7j7nB4bz0U6rGPR2j2cxwu9H5dcMMktJVbF8XIvEElc=;
 b=diy/CUvb+X0Gr0VyHT1rxcH8fXI4a013igSbeeCecnskKxxblecjE/Svy18l5X95yw
 vqKMoA6NjiDt9J+3wADacEv+yF2MLLWBKQ9zW7L+EOaaznSBd1n1POWhw3xifBERjwyX
 fqW845YyTN2h869MOJ6PQHe+hxJd4P4ImRElZjAfGTjEhTqUO26DxmwSlbGxPlEvag59
 YKDq6Ssl45LFf0/cXf9kLgIphwQ5qwike47s2dgUKLsCvSRUUsQ/NaPAuT9KK8OTOhvP
 U0aTF0yd3XITGax+tyOF5kt+ykR5ENwV/unPJQZJvCcOaqNPL6jkzg98IqzxNtWTBUFN
 J2Yw==
X-Gm-Message-State: AOAM530gjFMdJHDoKw0rca89GglTS+M3JZidM4pfOqZi88GC/QqlesKs
 1Kfbi4faqS8VWtQmveoO+I5kcmQAN9NXCA==
X-Google-Smtp-Source: ABdhPJzn3IIbarJWgaY0OXm+p6oht4Y10ZwedTtxF8vVbkI9l7iNJPtWMEpjn7YEUJFu8QwBQWLKRw==
X-Received: by 2002:a5d:40d1:: with SMTP id b17mr3320049wrq.47.1630584906322; 
 Thu, 02 Sep 2021 05:15:06 -0700 (PDT)
Received: from [192.168.1.8] (ip5b40d22e.dynamic.kabel-deutschland.de.
 [91.64.210.46])
 by smtp.gmail.com with ESMTPSA id d8sm1774448wrv.20.2021.09.02.05.15.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Sep 2021 05:15:05 -0700 (PDT)
From: Felicitas Hetzelt <felicitashetzelt@gmail.com>
X-Google-Original-From: Felicitas Hetzelt <file@sect.tu-berlin.de>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Message-ID: <1f52bd29-43e7-0639-57cf-abfb7dc9804b@sect.tu-berlin.de>
Date: Thu, 2 Sep 2021 14:15:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Thu, 02 Sep 2021 14:02:22 +0000
Subject: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,

I think there might be a bug in the get_regs ethtool ioctl in e100.c. It
seems pretty obvious to me, so I wonder if I'm thinking wrong but:

here the size of the regs array is set:

https://github.com/torvalds/linux/blob/4ac6d90867a4de2e12117e755dbd76e08d88697f/drivers/net/ethernet/intel/e100.c#L2444

which is used to allocate an array to store the regdata:

https://github.com/linuxkit/linux/blob/ccda4af0f4b92f7b4c308d3acc262f4a7e3affad/net/core/ethtool.c#L1339

The size of the allocated buffer would be: *1* + E100_PHY_REGS +
sizeof(nic->mem->dump_buf);

Then the reg data is copied, but the copied size is *2* + E100_PHY_REGS
+ sizeof(nic->mem->dump_buf), no?

https://github.com/torvalds/linux/blob/4ac6d90867a4de2e12117e755dbd76e08d88697f/drivers/net/ethernet/intel/e100.c#L2464


Regards,

Felicitas


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
