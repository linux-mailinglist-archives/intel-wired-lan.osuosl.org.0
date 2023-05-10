Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA3A6FE099
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 16:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AE806FE7E;
	Wed, 10 May 2023 14:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AE806FE7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683729695;
	bh=9WNRVGVCbJXjz8lCFp+N6ngpJLuLn38g3C9spZsB2bU=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=x1OGS+NbgwI5C0fOHsA8UnFL/pdsB38LKNMxHdZE/FG/5N8Zr74Q0ReLj59r/+5Qv
	 8Uratp1G2BjwiTtESfGOQP8S7n61BlIT8Mw2FEnnET2VN6JcwSkLXBzY6QpB+VcFOM
	 mABe9s+qtXO4a0ngWZG9QfJzMzP6uo/XTIo2ddBNVEj59ICJfwSkd+4103PhZLM//i
	 bgzAc+Rup0INWmG4jEpm2C2fMjp70CT00APlUiAQ/ZMJV6iEsDYyEk4HIYbOOWLjej
	 FKBm437O0+yEN8XyvbFi/YOOKZGWYDlgoscwFt+l76RcfQcG254DKZzbMXw8hQkak9
	 Cgq0eW6h6tbjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ruQo1D3htIup; Wed, 10 May 2023 14:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 303EA605A6;
	Wed, 10 May 2023 14:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 303EA605A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CAD61BF328
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 299B141FA3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 299B141FA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7yT71gQAv5Nw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 04:50:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 019CA41F86
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 019CA41F86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:50:24 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id
 d2e1a72fcca58-64115e652eeso47576364b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 May 2023 21:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683694224; x=1686286224;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=fjvF0okmkO6bRnSuK5692kJbO2O9eLlNpM3QSK5raGA=;
 b=gy2e3Mbuk04HqZ6X6otEJOJvfxTpqqZI5MTb5FpFf5l3PSWbhrgzZYGVzi3Cddhqp2
 +AKfIKdkKXdVk+qsqTzAkLOHn9yoXE0O/RrQbVkGc1FvmkFDRhWXzEvHCdfpmckj6Dvi
 K/OwoSU8WeD5bdy0XH9A/XzkGHfHi/9pC17MrpbVDyZkWAEX7GQt4AOxT4eBGYQacdHs
 zuFftOsTPmRdOuwvGMBSlVkLhi/s/KvhetLyPYnc/RVvIdHAkNRfg4h0cfLz3CQBZsT9
 z4ok9hvsd4fhqSW66f2x9g/eHF41acBC6+39TBphbbM6gZmS64NkYXW0kDkAKpjl0Vst
 cDcg==
X-Gm-Message-State: AC+VfDyhxM+oxIxnGPUchX1WD24hYBCslCrvtjPjLsHvU5Ph3SlbJYlb
 N/MYB5jdiBLRci9GOPAlxtc=
X-Google-Smtp-Source: ACHHUZ5GguK/UatlKScuuJ1FXRgLeUPfVlIBVrcz7ePqO0X62Qzo3Wnjdr2zlHi5SgqKj6owWZ3pSA==
X-Received: by 2002:a17:90a:feb:b0:24e:463c:c4a7 with SMTP id
 98-20020a17090a0feb00b0024e463cc4a7mr24450607pjz.15.1683694224295; 
 Tue, 09 May 2023 21:50:24 -0700 (PDT)
Received: from [192.168.43.80] (subs32-116-206-28-2.three.co.id.
 [116.206.28.2]) by smtp.gmail.com with ESMTPSA id
 ot5-20020a17090b3b4500b002508d73f4e8sm4404727pjb.57.2023.05.09.21.50.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 May 2023 21:50:23 -0700 (PDT)
Message-ID: <acf162e6-3dc2-6976-bceb-fa82b5e7b2c2@gmail.com>
Date: Wed, 10 May 2023 11:49:49 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Linux Regressions <regressions@lists.linux.dev>
From: Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Approved-At: Wed, 10 May 2023 14:41:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683694224; x=1686286224;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fjvF0okmkO6bRnSuK5692kJbO2O9eLlNpM3QSK5raGA=;
 b=Z1VR9OCE3JfLqABa9qplnc18A4vve7+jhk6ZZRLyvX6nhH9TgzGWcOxVy2KE7+RHDB
 IFxpICz2YqFTIB2mJjq85MD/6FtCgvLnmn+b9wuUFGQeMIYOIiKFy/2xFG/3ci6lE8YM
 QF5EgixnPPNKrvU2yg+LnC/NA+bUCaoPOh5z5uiWfRlKDs1yOuP6CcLvf+fsdNvS+mbH
 bhsZ7TejvQW/8HDTCyKr1J9YjPmJ9EksOiMyNScXdyanLpRxgiRXLs0gyuD0iJ6MbEPH
 SDHMIOMRt6SXRoyg72j5Blo4wnwFrxaLFxVmKEuY6ac1HW9hvIp/fNKR53cWHf3TyqvH
 FvdA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Z1VR9OCE
Subject: [Intel-wired-lan] Fwd: e1000e - slow receive / rx - i219-LM (Alder
 Lake)
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
Cc: Linux Intel LAN Drivers <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Linux Networking <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I noticed a regression report on bugzilla [1]. As many developers don't
take a look on it, I decided to forward it by email. To reach the
reporter, though, you need to log in to bugzilla.

Quoting from the report:
>  Scott Silverman 2023-03-03 17:55:10 UTC > When running kernels 5.15 and newer, poor rx speeds are observed on Alder Lake i219-LM (8086:1A1C) on a Dell Precision 3260 Compact.
> 
> To Reproduce:
> Using iperf3 from the system under test:
> `iperf3 -c <server on local LAN> -R`
> 
> Under kernels 5.7-5.14 (inclusive) performance is near line rate, ~990 Mbps.
> From kernels 5.15 through 6.2 performance is approximately 10-20 Mbps.
> 
> Also of note, the issue doesn't present with servers over the internet (i.e. higher latency links). Over a link with a latency of approximately 20ms I was able to achieve about 600Mbps.
> 
> Interesting workaround, on affected kernels (5.15+) I am able to resolve the issue if an additional device is installed into the systems PCIe slot (tested with an Intel i210 NIC (not connected to LAN) and an Nvidia Quadro P620 GPU).

See bugzilla for details.

To the reporter: It had been great if you also test the latest mainline
(6.4-rc1) to see if this regression has been already fixed.

Anyway, I'm adding this to regzbot:

#regzbot introduced: v5.14..v5.15 https://bugzilla.kernel.org/show_bug.cgi?id=217120
#regzbot title: e1000e performance drop (slow receive/rx) on i219-LM (Alder Lake)

Thanks.

[1]: https://bugzilla.kernel.org/show_bug.cgi?id=217120

-- 
An old man doll... just what I always wanted! - Clara
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
