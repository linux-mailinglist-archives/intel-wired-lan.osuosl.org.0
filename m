Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74558AB4BDD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 08:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22FC540D13;
	Tue, 13 May 2025 06:23:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rToOSJKlLukN; Tue, 13 May 2025 06:23:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91D4140D04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747117438;
	bh=4Xe4uYghntGHOIEC3/13sie1Qhs4ut1BoBFJ4y42rbE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dRmkpWJa15fhyP619BLggrKj+DcRG1V6V1V6+h8Wji/yj7zP1rqvlaf6cDjOWM7de
	 MyHcjSesBZ7cTUQ2TrAdf1L9WcF66dpSQKN707pund0nwhb2qy86ZUQfFSc5gNj1wE
	 pUWwzqJCqG7bfwgWpRmNrlc6vD179XMBtZVQjBIbLmU+VirL+hALnmafUO/Nrz+ASU
	 guLURSXIwE581QQ+TSgCtkrsKg6p1M6ePfH+vTnSRNnczVw4X8zxWreKG8YhZulhuH
	 GxpCCrKDbgIUyhkSsLm9dgZYz1lZK7FQgMkGqBjny2kECcumBWgUJaVMuK89FebXxh
	 ogICuN8VmTylw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91D4140D04;
	Tue, 13 May 2025 06:23:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F0C0D154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 06:23:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D28D760A9E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 06:23:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CoQAXYhhY2L0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 06:23:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A28D60594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A28D60594
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A28D60594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 06:23:55 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-7426159273fso1906031b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 23:23:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747117435; x=1747722235;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=4Xe4uYghntGHOIEC3/13sie1Qhs4ut1BoBFJ4y42rbE=;
 b=ceOcSVWgu/4tOxem7sy6z4QXIV6psqvKkwvlztIuP2o4fttW5EDSKUC/CMoDqoniTW
 pN4b+5xNG1GqDx6qbQOa7/7eeQB+utPsUJ9M+wnYW9jS4Kv42GCXEbwAzeTwrClkNbNY
 Lsb/uXacH6mFyQ+E0ngPrFZxij60ZLQ0agyM/HhHQFqtgOFcDH+4YztnPmHnICvZQdbp
 b9Ch3k0AYmfGaCwFDGlG+1M+5G4fqAKym4g48RdrCn0ptjZFxoKMAvS8GDRFkL6QgIRM
 AcW6a519zZnQnjBD4lWMiFGgoXIZFIWoCtW6OQm+y8CGzpQ4SVfxoza4HTew7u7dbrkS
 Mf1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdn5LuKhDTXCWyodV85SWzbHS8mULyxVuV8i4aS+WyN5DLk6fzwLOwrvCCH2xvQ96Pd2jAf81slJu7r+gQ5X8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzgZ7opPyLOICxXV5YzgE5QcFO05HiWhj7I1RRZPZw2JNk932U5
 ceGvO4SQsUmk++hdamunLM4DOPpDRkxYb6c6FgyOZTrkIJ10Ft48w8MxSk4TrcQ=
X-Gm-Gg: ASbGncvR5FEvNQ0hvxNSziWzeO86boRB+6wAdbBcpQ4GTIriY6F/3UnXsSD2lJguQmX
 yX+OYD3KTNjuOQyZx+ozW+J9x+HZ7fVvQpp1q7IyKPTSCZX5StgidxIlkrRvpeS4nbhO0/B3OaP
 4jO1ViSNPMCdfKir00SaEvc/rEUhHDvFXQgFxCCvOuBtCU1KIjutdq4+lc241cfurrGWBZ2flwH
 V5aS4Dhp7zMVa+E+kyvF6Eg+ZpOPH9us+VceyMPsUjLr+QWNz+/wZ/m3jORcD7CtmT3nEuDlebu
 CQxRNRyrjSaSx+yvz1EPj60G8Z/unPNna9GgGy8HsN1NhTUmVSqYtEt+vv5Tmpcl
X-Google-Smtp-Source: AGHT+IGaYQuRICfs2SknzMpxDQM2zuaFYRjcuLtZoCaPh500iOYbo4XJp56Xa+ir6JeYYEIEzfycdw==
X-Received: by 2002:a05:6a00:4652:b0:740:6f69:8d94 with SMTP id
 d2e1a72fcca58-7423b3f12e7mr22633670b3a.0.1747117435423; 
 Mon, 12 May 2025 23:23:55 -0700 (PDT)
Received: from [10.54.24.77] ([143.92.118.3]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74237a1088csm6987174b3a.113.2025.05.12.23.23.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 May 2025 23:23:55 -0700 (PDT)
Message-ID: <bf9a3230-26b9-40f7-aff0-99c802fb7764@shopee.com>
Date: Tue, 13 May 2025 14:23:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jason Xing <kerneljasonxing@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <0c8bf3f2-1620-420e-8858-fe1c2ff5a8e9@shopee.com>
 <CAL+tcoAYvN20aMz-WYFEUeBypS8yMJ53YgdMUHCX6FCr__qT9A@mail.gmail.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <CAL+tcoAYvN20aMz-WYFEUeBypS8yMJ53YgdMUHCX6FCr__qT9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1747117435; x=1747722235; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4Xe4uYghntGHOIEC3/13sie1Qhs4ut1BoBFJ4y42rbE=;
 b=afKtQfiF4JYS+60FkmCBzZLQALFegSVHa1rPK+fXmFBu9w+m48lfAAePIVadNxHQhD
 OJ52WdsX1Unitt1f3o3z1Jh7MHkusWk4zmc0iT+uflFiLscNv1LxRPcZA7qdIsDcrnOG
 55zrmg9YyzbUOMSIpoHYhe4EPysGPbKh4Il/P6tKcbUrBBO6KNPruBjkj9Wh3+NB7mcq
 lFUd2JmFjga5Pey9MSijO/mmgiD061uFuwnILNGXfTjNYPSt9vhLaqheGK/ByqqLWOcA
 e+oPxeYenC0swXfewCs0DMHsEbSwqbgx45Cq2NmBDRTlc3Q8mnIQrVlxSc05irgSqL8v
 +KgA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=afKtQfiF
Subject: Re: [Intel-wired-lan] i40e: How the packets will be processed when
 status_error_len is 0
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



On 2025/5/13 14:13, Jason Xing wrote:
> On Tue, May 13, 2025 at 12:08 PM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>
>> Hi all,
>>
>>         If the packets arrive at the rx and then raise soft irq to handle it, but in i40e_clean_rx_irq, status_error_len is 0 and return.
> 
> Directly "return"? What version of I40E are you looking at?

stable kenrel 5.15.162,

i40e_clean_rx_irq
...
	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
	...
	size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
		       I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
	if (!size)
		break;
...

if status_error_len is 0, the i40e_clean_rx_irq returns 0.
> 
>>         The data isn't fetchted from the rx buffer, so the how the packets arrive at the rx will be processed?
> 
> In i40e_clean_rx_irq(), packets are one by one constructed into the
> sk_buff and then passed to the stack by napi_gro_receive().
> 
> AFAIK, common drivers implement nearly the same scenario.
> 
> 
> Thanks,
> Jason
> 
> 
>>
>>         FYI, the every rx/tx queue has been bounded to one cpu(64 queues, 64 cpus).
>>
>> Thanks!
>>

