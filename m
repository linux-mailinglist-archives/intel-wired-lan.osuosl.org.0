Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C2858CF68
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 22:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8AEC40180;
	Mon,  8 Aug 2022 20:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8AEC40180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659991872;
	bh=+7+jwxacGeh4pmutt3s/sXwgWZfUEpxTWdO/Y58s4A4=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PwZM/Yflv1PjbUABwh6X/vN3NtyCIkcteDrmUGv+RGd4YCbvyzrLE8SC8JKCJqYGn
	 Tk8ySBNHmnPX9O6qtfzPM0SINi+e57dqoqtzBlCVHrv/7Uw3z8X7xnFac2w8MWXEIF
	 2xlou+tIDKcVo/SVOf2cnDZd1D6lXCCD7JtnlLEn/vh6GUlvhcvZTcWhHyMhhMSD87
	 5gMJBZRZCh38nGfseB4hKiHS9dSREAa9kG/Xn113Wd8n0uBs54XxgO/a0gycXxrr1W
	 A41r/g6wOC/3v1jJd+yOtIuxm4Cb6K4pz/a/a4k4z+7XkEA0KgKzgc6vcG9Ae4FgKS
	 GIC/N8scRwMEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2CiN7rTF6m9; Mon,  8 Aug 2022 20:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C11E7401DF;
	Mon,  8 Aug 2022 20:51:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C11E7401DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 034271BF283
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 20:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D078A40979
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 20:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D078A40979
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrfoF6eMQo0L for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 20:50:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5528B40861
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5528B40861
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 20:50:05 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id b16so12822973edd.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Aug 2022 13:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:to:subject
 :x-gm-message-state:from:to:cc;
 bh=S6Jqr3i6MlgNxdJRw4bzd/pzQcm+bxvwrwCXIw8V0l0=;
 b=lprc1dlCltdtgAI6HiZ3EEmOzikZSEJstUs36sJfhFyg0yrrL2FWS6mEbEyoJPQpzr
 JJsW2pSykYGP8f5THzPVxrbk0Q4RSFok4GsSkuT7e88LQd9jkWvIK4nUT26pD4wu4hiu
 8wknm757fEc1umpz0Fm+finNh0xGH15ER17zRfoTYgmbw69AtQLxQ8HzcbXhxpJHVUj8
 YR5PFDSH66HQheP8uLnodQvLYH9vKGMdxLOzoz7F2lTAp9VL8Z1qOcJMrPLi81ef5chD
 hDtXrH3OirotJhxxEOWCeBXjzxhs9ggN5XeeQerqeNABvGYfur+OvmGPIRHWyvcJfAO3
 2otQ==
X-Gm-Message-State: ACgBeo1Cmvi38QK+5wvNBgxm5bBOcJU1h15km4QE/F6QrTw8lKq7+Ds0
 YvHCxUHaNPYMPF5uioRQFFY=
X-Google-Smtp-Source: AA6agR42Wx7WCIxo5hGgyaxdWEEgNp9P/L0b63L/Ly0EdWreH8vSbaNmNwSKuz/9KIbb8PB/3sCDjg==
X-Received: by 2002:aa7:d49a:0:b0:43c:fed4:c656 with SMTP id
 b26-20020aa7d49a000000b0043cfed4c656mr18845862edr.312.1659991803422; 
 Mon, 08 Aug 2022 13:50:03 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 cq21-20020a056402221500b0043ba7df7a42sm5024741edb.26.2022.08.08.13.50.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Aug 2022 13:50:03 -0700 (PDT)
To: Lin Ma <linma@zju.edu.cn>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
References: <20220808081050.25229-1-linma@zju.edu.cn>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <c8db4a58-262d-154d-c84f-f435ada348ba@gmail.com>
Date: Mon, 8 Aug 2022 21:50:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220808081050.25229-1-linma@zju.edu.cn>
Content-Language: en-GB
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:to:subject:from:to:cc;
 bh=S6Jqr3i6MlgNxdJRw4bzd/pzQcm+bxvwrwCXIw8V0l0=;
 b=L7wDsYYbfh2tUMtVSUTPt7tXkjTJA7tYPYOhPEXFJ+I/GP+KJQJl+xbvJNCzWFRFt6
 vwvLCjBL1zO7YEqIlWQAlqCgP0Eki98qtx77dBRNsMqv8ICKDZm9VYRvJMg68N2aHnsO
 RR8h4RIU3EmUWJxQOWiVd3bv6MFAsuwiIH+ar82hsXaFogkb29UMiZtOYybWOguk2uUu
 x8dI6qb7RFN6y1ohqMmtvKVbxqOrKqSPGsDoPHcUPcY9qI/4WEyC43GiD8IhGXEbokf0
 p+2ORGzGQTNOoaSeSQUBR8/G0it65j0g+Y2Mu5bBdLkKMC7xF7N6V7j4POrQFFROsIM0
 rwsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=L7wDsYYb
Subject: Re: [Intel-wired-lan] [PATCH v0] idb: Add rtnl_lock to avoid data
 race
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

s/idb/igb in Subject?

-ed
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
