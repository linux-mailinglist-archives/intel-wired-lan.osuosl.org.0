Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F53871462
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 04:42:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71C9640430;
	Tue,  5 Mar 2024 03:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TB5VcvXiMbuI; Tue,  5 Mar 2024 03:42:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32202404C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709610165;
	bh=RwRBAEByzfgNvSIoEkSYsQAPUWr2a9oJKDmQl400sLA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IDgzmydfe0+uGUx/r/nN7QYKusJJZY3T9WVKaZawCDsxDtnEXIXz2euUvBzMbHfki
	 anbnf+RLbOnujIveOFc3QqNz21La4N8B44bympzkG9mRunouiMU6uY7fkFPAfnAi5i
	 gYlQL04oaGhSGRCPmuZjIeceSb2NL+PSiHOXoBZxvoSaMLtgjyR52Ri6pFt6/mDu1K
	 yfbAKFoemzql9jdJN0NTVg9NaHpqoET3hDbDoIguwBCtzWwUScbJ09OLZ2w6BquMKQ
	 SMTjfSjsozRgsopoCYXPEc40JycT6LqsHeEb0ukKU9GE1XaaxwSpj7UNX91h6L8N4k
	 tZYMD6hmIYi3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32202404C1;
	Tue,  5 Mar 2024 03:42:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B546C1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 03:42:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 924D040814
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 03:42:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u5CJvy-VZs7J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 03:42:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E18DA40811
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E18DA40811
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E18DA40811
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 03:42:40 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-6098bf69909so29114237b3.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 Mar 2024 19:42:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709610159; x=1710214959;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RwRBAEByzfgNvSIoEkSYsQAPUWr2a9oJKDmQl400sLA=;
 b=rKoFSobr8QrBLAf3O4sc9sitq9WWqYjFlNQQx2HI0pL18Fbw3gCnNBmA/6hbKr9FaS
 7FI9wS3x/mEVxnGvo777jfiM4S1wh1/MjM6v/x/VMTIZ88T5CaYmYYNAgcqVcRIskmCa
 OJXS8O1IuN6zYNtjzmLaxms8Ep/3jh14C5XW5Bo9thi6NT7OJlzUqIqo32FesZh2v3yG
 tv/qTtNhad0Qk+hJpj57eVYgQOVcepWTt3383GfsvpnjvQ8ODxK1Jm202FIVmvBuoq3c
 z+xhGEeOO2FX+szq23IdLp4ujla4jJGR0fZSdPGaNGET1x3SI3rqS6PpgIT7+PsC/mIu
 /o2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXyWfbI2uUYHmlu83hhiKmVBEFr3rtnzGI0sY6VBKFpe10BBIm2cs+dtKzCwfbnnHy/EkB4BRmK+YIRLghcYQfzIlN2ewmhXawI5tYptxMjQw==
X-Gm-Message-State: AOJu0YxmnTroLs9lHXqu/z8mBXdXmSbzvRdnR/4A+uTUYfedH+zBLBv2
 faMUhXBeYRo/zKyqwRFfRKLWZisqZBH5tKi1LAMWFrna4O54/Lp6wI9J3eUqsQdqfv8bGfyD40T
 QHgirDUkd7taJAep7DURNeztGzRA=
X-Google-Smtp-Source: AGHT+IER45kqclRcXl4fWTfOH2b6RQ9iRuXolGj6iEgJsDljotli7ZMu3Qshsdrtu/apb/P821DTmoI1JanZrWwNpE8=
X-Received: by 2002:a0d:f407:0:b0:609:8cec:36a4 with SMTP id
 d7-20020a0df407000000b006098cec36a4mr966597ywf.19.1709610159049; Mon, 04 Mar
 2024 19:42:39 -0800 (PST)
MIME-Version: 1.0
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CYYPR11MB8429FCD568EE2AF90AEE2CABBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
In-Reply-To: <CYYPR11MB8429FCD568EE2AF90AEE2CABBD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Tue, 5 Mar 2024 12:42:28 +0900
Message-ID: <CADFiAc++edOb7-O6yCUgpAaonZ1sQdkrwwH8432D=e40g1CwoQ@mail.gmail.com>
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709610159; x=1710214959; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=RwRBAEByzfgNvSIoEkSYsQAPUWr2a9oJKDmQl400sLA=;
 b=dIt4T6gB3YrppHuebT00Jy+5qav+YjG9K32sLIN8UcrYjwiaCd0Buz3Z8ehPSuoTl4
 gsQRgdoXnRjH7ZZieTWWT7FtjG89EzVuTPnIDr7+pUS8Y34qtxCSu5JdcRr5u2Nik8Ly
 +BTDwQymm3tuzA+4a3XwxyHkrC5ZKO2Ev/j35CQsoCg1VcSL91oFHlzrJfDW0aMhBtOy
 6wNixZv8tw48eVsgAyOzOx3/nk6qJk536dwRAZNif5G2T/2uEfUgJsD1wslZxbtdR7I8
 pgYHlvAINcG1p3ooJ0XqzBR+i4/B+FiHDo5eBc8mVtGNG/DThbT7fm685OIKd9iGhrdD
 vYOg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=dIt4T6gB
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "laforge@gnumonks.org" <laforge@gnumonks.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "mailhol.vincent@wanadoo.fr" <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Himasekhar Reddy-san

> Functionality wise its working fine. But the ethtool part (tab complete doesn't show GTP)

I forgot to add the tab completion feature! Thank you for the good
points. I've added it again in this version's patch.
https://lore.kernel.org/all/20240305033555.524741-1-hayatake396@gmail.com/

Takeru
