Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F3FB0B4D3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 12:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EB3761084;
	Sun, 20 Jul 2025 10:11:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QReatPTKvsj9; Sun, 20 Jul 2025 10:11:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A091C61062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753006296;
	bh=JdRTpizrrU5e3G8Qae8BhJ1GHYpNCsEA8s4Rmi93U9U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VziaG6N6KNpjbGpjC8yKoZh2dPEXFC4AO21N2BW9R9j8WRCItYM9nAFTWRkmvaqdR
	 /WLa0JHYtQ7b79BUF1/ocosJ/asQCKzIgPDbET97HxNhR7GBVPznUHYpnTU2iNACk9
	 YZe7YzUau9FmuwRHISgdLgZaO2HmPJrU1fTQSFfCRswuKafpws6870L+ALrDMyHMae
	 3HvxzJHuF1JXTkSub0HXlwWXej22yQb6Wh/3ckbseOXr7v86rrip1F49GF8W/HvPDv
	 nPUGwsMiBmTjEerFmPwbhsQwfmtKkRLNly0smTVYfcYBtlz3rh49rvIessZsFku1ex
	 vc56Y/DPeCf7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A091C61062;
	Sun, 20 Jul 2025 10:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA699117
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 10:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC4CC400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 10:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id edGaCgS_eCOj for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 10:11:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=ttoukan.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0313340123
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0313340123
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0313340123
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 10:11:34 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-4561514c7f0so35424765e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 03:11:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753006293; x=1753611093;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JdRTpizrrU5e3G8Qae8BhJ1GHYpNCsEA8s4Rmi93U9U=;
 b=VKpkD1Z5FDdgK1bBwhzsszsRSzZTzpevk19ct7rax56Tl9672fgvMwGSn2dhdAm+1N
 IyedTkKpR4IaJlWWkGKoi8nBcQkSg8EQwY0aPfkmZWVZD6PM7qohHfcop7Ircu0DdRE8
 iFsdzPWyouWCpFPcvaqMWu5cPxBfIS/ZYf6omeNEGD4k7a+8dDDgMQBwMnww0YOVscPu
 QpU3oXfVHGg8sIZuklZHlv4ZHSpZ94BuGPlLfVNLHAVt4shEnwYxZIxI3vm2hz17x10I
 YfNNQ5FUuMgsDTjeW9gFhzQi21TO5bsaNPMLB4OnRfpPP47uTLWDmfIWdHEXdJRpqUEY
 k8JQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/vQ+CpxhUmta3mVt6TNK0vi7Hq6rYWuy+t4VDQqvUoEiDVd381FN2DtwjDKxujL1bRCHCXwzfbHtIhdvHyXk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwMlS2YbjP/20Ba/2ju08/F4i2l69kXPQKTQ611b5wC5yyRqFur
 D64w4B/Z+XGMe2soY04/7vCJsMxsY0pjiveycSAO/pDf+5xREnUdmSiw
X-Gm-Gg: ASbGncvLVqZZGzakTkiZ/oPcENnD3iv3ZZrQBQZotPk+iIalJ2My2WS4OAxBWmOFFcL
 ZPmqgdajrXc48KdlVq659YnoTURvLlEO0cqa5sdUvt5fmFgv3a3/YfOzpwFZhXnRVRSIz9ksHSI
 HGJpzneTolhb/g8J1o8Mbq5cQuVCv9J7mRIfz92EDq+hAcoo3hQ9iV4NsnbCob/giCy3dI2rLZi
 HzaUgi/8i2/4Guph5chabuKN665qlD2uqMO9/coP5j7SCygniEEcsbPyYofrOPg3tKGtY9z44pg
 BYAUTWDRxD9a8xAh/NcqUG9+nB5KKJJH11aZRYC6Y8eGdvxhNCYOYaY+UKqwEz6LVEGYEQxP0Mh
 xiw8RwmZ0whUC4Pw5sopZPo06AOTQHanrcydxJCh4NUo5XYm6cL/SXVyWng==
X-Google-Smtp-Source: AGHT+IF2s+ysLSvlfEeRDPjVCEmq+qa5T5BlTc61WRYN/BrMqkjiw4nWQHAfv2AZZ83vJjydX+cmVA==
X-Received: by 2002:a05:600c:64ca:b0:456:1752:2b43 with SMTP id
 5b1f17b1804b1-4562e39ba8dmr145529555e9.21.1753006292314; 
 Sun, 20 Jul 2025 03:11:32 -0700 (PDT)
Received: from [172.27.57.153] ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45627898725sm114520565e9.1.2025.07.20.03.11.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Jul 2025 03:11:31 -0700 (PDT)
Message-ID: <f132d14c-0d82-495f-8f6d-bf87ecb4bc75@gmail.com>
Date: Sun, 20 Jul 2025 13:11:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Tariq Toukan <tariqt@nvidia.com>
Cc: Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>,
 Gal Pressman <gal@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Shahar Shitrit <shshitrit@nvidia.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Cai Huoqing
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <1752768442-264413-5-git-send-email-tariqt@nvidia.com>
 <20250718174844.71062bc9@kernel.org>
Content-Language: en-US
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20250718174844.71062bc9@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753006293; x=1753611093; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JdRTpizrrU5e3G8Qae8BhJ1GHYpNCsEA8s4Rmi93U9U=;
 b=Tzs6A6n03sr5V0dbXMIQsdTu5h4qAGOSxj8ch7bw5Bb3ZDNZcUAoy4TfLE4mxs+Lp4
 vp4e6+f7dZkvaVrn4lDbL/41OQXjfyMprfxNhr/+diufWSVocotNeu61XA1KXdWGp/pJ
 Y6hqMP3xt8HzqE+se6+e9mZKAP2DxGOsgR+q/PcdCEL8grxM5QDnsPSpmt3WsbG46GUd
 84HH1lpxNZ9xnMTzXg3131DJUEy0otj2p0L7CHiQL0b6RARbK6f7Xs3n3WPKMGPCnPZy
 bdskkB3vXY/TVVxusRJlaER1rK3pUjxHVCsnRupDMLcoCxfSoWxUO143LY3YuKbUBZuj
 4vxA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Tzs6A6n0
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] devlink: Make health
 reporter grace period delay configurable
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



On 19/07/2025 3:48, Jakub Kicinski wrote:
> On Thu, 17 Jul 2025 19:07:21 +0300 Tariq Toukan wrote:
>> +	DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD_DELAY,	/* u64 */
> 
> /me pulls out a ruler
> 
> 50 characters, -ENAMETOOLONG

We'll address.
