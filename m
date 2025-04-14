Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B51A8887F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 18:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF9FB81ED4;
	Mon, 14 Apr 2025 16:21:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M7ekebmpSf9Z; Mon, 14 Apr 2025 16:21:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AFC782C3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744647706;
	bh=Fx9CLNx6B9Vh7w2Q67gBVSliKW/Q6vuPCUUdblElgFI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nn2DT4d8F3p+JQ5MkPRTlfa/85720LfzMgQONhu6V7J3ylWD3omnGt6JdDrLxo8h1
	 +WVLAakeHAFUNEBdRLwOu984qKMhLJkUtuJi7abR5dFRW9I3MVFOemod5R4UZoUHsA
	 8/OnngyWtu8TzgucgSFdGooJKHh6AA4A7zs5UNMEzqz8TU2dEuFjGiy2+SngUCwEI5
	 jyJ4ibUel1Mlx4wO7K996Gu7iEaaJSfMQmutK6Igiz7gK30ZUiIx5VQ3KbEOczRVZP
	 Zzakx/iPB6r0HYZe4A4RnbcsrGHD0qfABc0Jm1/x+uHXLetRYrC/UMX5ji51yS2FRV
	 0mL3Tub52wlPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AFC782C3C;
	Mon, 14 Apr 2025 16:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 475A0DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 15:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 391CC40640
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 15:26:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ODZXTEAJriP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 15:26:44 +0000 (UTC)
X-Greylist: delayed 1440 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 14 Apr 2025 15:26:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A7C940604
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A7C940604
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.168.131;
 helo=mx0a-0031df01.pphosted.com; envelope-from=jeff.johnson@oss.qualcomm.com;
 receiver=<UNKNOWN> 
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A7C940604
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 15:26:44 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99nlF015739
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 15:02:44 GMT
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6cxw5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 15:02:43 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id
 d2e1a72fcca58-73720b253fcso3343626b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744642963; x=1745247763;
 h=content-transfer-encoding:in-reply-to:content-language:from
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Fx9CLNx6B9Vh7w2Q67gBVSliKW/Q6vuPCUUdblElgFI=;
 b=qLD8fU7k4BSzujfUGEWBlHA7rsdSWxJ+c8GXKg4qv2xX2Tx2JVCk0RGhPj44vPUgR3
 u524uHvUY8PZ9J3lvJS5dwqQxOQZQd8TCR4lDKaO95jYpOQ2lrQC9D88QSfPtoHpmpfg
 KcLxndB2PeYpBQVfLh0oF5u4e5uTt3PF5ZSld+foYnwLLge14m/ZAlnnf25wULqcBVob
 C+luD3FXUOaWNELLS2JaRRJdeNNdswUfRKDMy1klZdfmJTuVtJ6gt38BzMDIfCHiNLWn
 KVRZHS+weALeVgAjOrItqaMCZffQB6iz/JwEcM653YCCRZaVur5uCFThpobkY/l1XFJ6
 rbMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUf3dCSNOARaX1CJN5F/9EJllwKt1Aj+9+mhhCJDGXM6SdwrZEwVgYypTrtik1lHLKXaxwNhAnLItfLSycqO1c=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwagClHHiW6P+NOQ7MgrUuhSzDlD40kU2CHE3rc/Anb5ITpnbta
 ebNy5lgD6YJfue0y0qyhk8ERl24PY6nKJ38eOMok3BW/Yk+mzBCKoWCL6nlPaXM1f/eN8ASZezI
 V/IfA0F3zYlqHFMWCrkSngpQUX9Hp/TB5nKmM8GcqO7wxH6CuEl63iF/oke7JhUJNu/vn
X-Gm-Gg: ASbGncs3BC7KAMc0tI11BWHeccysBw6SAWRkdQb9dcKux1K/yZs6DPcUIIQot0CNS1J
 x+rkaFJ4KXYmKJtP134FYKU12afJkalL4/O1DP4drJD1UDYuIxi1aF8bfPfmS0YnTkbQ++qet/r
 nhGejQ4dD7Ge9Ngux2wrOqJVQ4KyCr3yFVmQ/A51alHt3Xp0IrN1IhaVc0JQWheKm2mKgWkZA6u
 h4Vg3KkG7u0T9mQLLhyNpiBgzHtFHZYV5IRdZdSQoo9u7wQfC8xgjFG/3j4d8n+ynTW3n/vv3Q4
 RXW6WrCT1oXOJXnnpOopwKiNOGY/HQK+0yUjPxvRsoRoZ6Dt/Y0aTcJVgJGkadCjmkJG0IHjows
 Hzsv7
X-Received: by 2002:a05:6a20:94c9:b0:1f5:9024:3246 with SMTP id
 adf61e73a8af0-201797a39c1mr17925505637.17.1744642962970; 
 Mon, 14 Apr 2025 08:02:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1bvcHXdGUC9wzx8xCOFjLvQn3x2hUBSOQvCCcOvrLi0D37ffqN0AxJ/2rFL/I3g9ErbikTQ==
X-Received: by 2002:a05:6a20:94c9:b0:1f5:9024:3246 with SMTP id
 adf61e73a8af0-201797a39c1mr17925443637.17.1744642962376; 
 Mon, 14 Apr 2025 08:02:42 -0700 (PDT)
Received: from [192.168.1.111] (c-73-202-227-126.hsd1.ca.comcast.net.
 [73.202.227.126]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b02a0de8926sm7855972a12.30.2025.04.14.08.02.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Apr 2025 08:02:41 -0700 (PDT)
Message-ID: <9c53011a-0e00-49f8-bf7e-b04ddc8c575b@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 08:02:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Jeff Johnson <jjohnson@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>
Cc: ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
 ath11k@lists.infradead.org, ath12k@lists.infradead.org,
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: T_tbVtFIoSFkEWnU9KdLyjtlgesJcaiY
X-Proofpoint-GUID: T_tbVtFIoSFkEWnU9KdLyjtlgesJcaiY
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=67fd2394 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=e70TP3dOR9hTogukJ0528Q==:17
 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=2xVh5uQ6XZRltrFgOl4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0
 mlxlogscore=570 suspectscore=0 clxscore=1011 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140108
X-Mailman-Approved-At: Mon, 14 Apr 2025 16:21:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 Fx9CLNx6B9Vh7w2Q67gBVSliKW/Q6vuPCUUdblElgFI=; b=kFYSey27HL8ztTDg
 RdpAvxgZ9m4z4naV34qjlKe322EcwPVu0dTVnfPZZoyOdXUJ5E7wux2TeOqRJ4cg
 2I23PD7rdAlxiI0HYOEieepyI1mShxQcF8F6Y1o6s3QYkTAyNatHpR3StJnJHmOe
 n0lIZfIVSP02j0rp4r8uiD7Tk5zoWDd1em3eS3Q37qd5aF+3T6OY9AqQFyTVpJ4B
 TrXR/Rrm3wfGoSnWErszLRs4u1X6Tb16EmX8Q9/jInhOi4z5JarRPgcVFD6QRjsM
 cI/1f4oldAetzdjVh8rgjuL2xxugaN6sKplOEl3/wFEr8GZggBwlvk6fkfz+6Ou/
 0XmDpg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=oss.qualcomm.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256
 header.s=qcppdkim1 header.b=kFYSey27
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: Don't use %pK
 through printk
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

On 4/14/2025 1:26 AM, Thomas Weißschuh wrote:
>       wifi: ath10k: Don't use %pK through printk
>       wifi: ath11k: Don't use %pK through printk
>       wifi: ath12k: Don't use %pK through printk
>       wifi: wcn36xx: Don't use %pK through printk

the first four should go through ath-next and not net-next

>       wifi: mwifiex: Don't use %pK through printk

this should go through wireless-next

/jeff
