Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7788A4D5162
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 20:13:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85B0C40B76;
	Thu, 10 Mar 2022 19:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ZhMt-Szbj6n; Thu, 10 Mar 2022 19:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 59F744053E;
	Thu, 10 Mar 2022 19:13:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47F0D1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 19:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3498061240
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 19:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KChbfxiwfywy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 19:09:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CD5160B97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 19:09:17 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id t18so5481457qtw.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 11:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:to:content-language:from
 :subject:content-transfer-encoding;
 bh=4Eg/kr2FvwvFUMJkrZH9WfnnvOD+PDJNp7jSUeDr+gc=;
 b=LYcke5ASxtjYElrS1IcUYpM9PYUITNrfu0nm3WzqLRpS844zTSGM/H9StKFlZreVRe
 CQTXP2k824SEzA3lIGcJHRLNUGtrStbNd4d4Wt7mNK6JFTxoAtJF4m54lFcoRaYUuy/Z
 cxjQcar+4V003gGsEkCE6SW3VicOhkPL0FeBCQ91L9zuozdfJiHxBuCmjKLWOimrDwx8
 4EK2pIFtvQ7uXP0CVi0GZl9U7ydpusTrfh8ZnRYnSlf0b6+6sSjzypRi3TyohnBYGcwF
 8AbI3NrrmEDEUZUhMFFEtSqj9W1dxnpzaQEHmG05f5//fWA6cecrUCpO1SqRhyCrrezH
 EoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:to
 :content-language:from:subject:content-transfer-encoding;
 bh=4Eg/kr2FvwvFUMJkrZH9WfnnvOD+PDJNp7jSUeDr+gc=;
 b=cahNW/lzn3XGX1GzelhnLLDgKqiUQF3kSw/fN+2UE4ZkOrJARXUsdlBFhdFr8UTAkp
 Wu79Z5Rq2ZDJPVdr1+WyeXlq/TSFBpqSC8jg7SZ+euRLLQMhcULmDW3SEM8FKSUvawK7
 DqECMxxuJN1boIcmn+UXo9ALehn/Cx5Iz2/XeD9RQpwcmGkThIASQ2HxrKDr36CacQFr
 v8uePfyd+S+EUJLve5pwom1u1mhVASJEtQZdukMP13werVs3j7obHI+gJ3rVrwE8IKJO
 5NrbE+UEfuClyoaKse2XWtg8DzOrXLiv7p2/v99orNFeH8u8BILaDDMogkWTeTu4QZ7+
 TW9A==
X-Gm-Message-State: AOAM5334Ti3VEhiCH7zbk4dq8Mi6mN4yrukGrvdSZv/6HSC6RneQwGvA
 j47QpYEkhERelWJBUnEhA65BUWwki7XmHw==
X-Google-Smtp-Source: ABdhPJxZ6hq0OzsnFyVwEs1h9A3BZxxDQT/ErlOcdmElTX4z6nX+Zsc/10xhKvDo13kLQRBt6t6C5A==
X-Received: by 2002:ac8:7d92:0:b0:2de:3c4c:bfd2 with SMTP id
 c18-20020ac87d92000000b002de3c4cbfd2mr5223002qtd.502.1646939355322; 
 Thu, 10 Mar 2022 11:09:15 -0800 (PST)
Received: from [192.168.10.22] ([24.99.82.37])
 by smtp.gmail.com with ESMTPSA id
 w3-20020a05622a190300b002e19fd2d2bcsm3576195qtc.90.2022.03.10.11.09.14
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Mar 2022 11:09:14 -0800 (PST)
Message-ID: <212db0a5-f295-c8e5-df3f-3a32b23a69f5@gmail.com>
Date: Thu, 10 Mar 2022 14:09:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: intel-wired-lan@lists.osuosl.org
Content-Language: en-US
From: Ken Mandelberg <kmandelb@gmail.com>
X-Mailman-Approved-At: Thu, 10 Mar 2022 19:13:29 +0000
Subject: [Intel-wired-lan] i219-v on Linux 5.13 (Ubuntu 21.10)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ethernet on a Intel NUC NUC6i5SY, a i219-v is not showing up on 
Ubuntu 21.10 with a Linux 5.13 Kernel. It seems that there is a history 
of this on various version of Linux.The Ubuntu bundled e1000e driver 
doesn't see it.

Any help here?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
