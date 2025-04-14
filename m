Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A1CA88CAA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 22:03:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB0B180E5C;
	Mon, 14 Apr 2025 20:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d0Kpbssjo_Hu; Mon, 14 Apr 2025 20:03:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 303CB810F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744660982;
	bh=OETJdvcRlTDOC3wxrm7MGgDibXakzm2Chi5+CwgMXn0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zYKitMT1HR7ASreCmGxTA8lsZP005SIx6BCBvJKy8hWC7qmDFWYGnMGOUAoMpSwKM
	 Vlmis4H93SOIj1aF5ML0KRR1uT9DaTWCoi6sCWJObtoSKNyavWVAG6rTW1p6WwLaCx
	 1BaNBuFmZf+XQVZim45RFxyzAbXixacYADHfx8Qk9QVvXirkhHk1mBgQxT+UXTRKSp
	 pKbskDVZpMvFPlBQM2CS9rVeZncj+ku2Rrg7ACua9XnLwh/uzyg3hXMLAbM7sQjK9o
	 uL0VlXKG9BBuAHr7Y5rSAI79+G3iSCknzdygs3B7CoxtR4rPV0coAh4ZD7H0ep/710
	 fDOYxKLmTaF6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 303CB810F2;
	Mon, 14 Apr 2025 20:03:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 89378200
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 19:50:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F01C60763
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 19:50:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjKQwq1Tok2V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 19:50:15 +0000 (UTC)
X-Greylist: delayed 2737 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 14 Apr 2025 19:50:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6EA2360D79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EA2360D79
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.180.131;
 helo=mx0b-0031df01.pphosted.com; envelope-from=loic.poulain@oss.qualcomm.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EA2360D79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 19:50:15 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qIn011398
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 19:04:37 GMT
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wdhse-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 19:04:37 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-6e8fae3e448so90401526d6.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744657476; x=1745262276;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OETJdvcRlTDOC3wxrm7MGgDibXakzm2Chi5+CwgMXn0=;
 b=Pv6jsQxX7K7n8ii2XPkSMPSfkdmZjfChFq91HuaYD/m8P7QXRS5q6LbnFFSaUlGhRL
 A0ppNqdIDUf4k2VaRjs6pl76zs501EirGeGAMmKfac2gjYsSSPDHaISbzVwAaV+AseOb
 rbzAQqI/154jZPBbA/9q+3F6okC4bmmICUjdGFGYg3SZ5H6kNnMTkp+Rk+Q6xnVC45IG
 LgpigBGK8gTxwZi+sfvYgqtsxhKU5XC9SodR+BPYKTuoqjHm9vGb8GijodeqI80rvSqN
 Pnx7PfuRUzMn4dtjxiwZox4HlGfcbRFaCrVuKgZNBTCCSfy2VPUcFTv3TIdx99TWDkFG
 itsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrcTVGc7o3c/UPrt0vGRcqNl8ib37dBpAzM2KL9b6Qx2u9oZzCr9iGhkUVIXHV6MvVhWgp42Dw+JKqe3N2bms=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwG9G3C324Sq4JyTxiXSnmsB930dSC9Da5znPCeb1EKZN3WxstD
 kkqN+Sn+BKtbKbO2VS9LbzzA9hnbs5hCaOroI4vJL9xBsQp9gxFSqBiM0Z5diAT82GiVIb8rWz5
 jrB/DnIRGItToea/h7Z8m3f/7quTjO0LBRoh2jCQBVyE6+yHuQRTN+18zSiFPR+b0bnHq5rADBI
 OwfM0UnKsl3L+dTeNpaVdoncPIjxuDFWNI/hQdTML5Fzo=
X-Gm-Gg: ASbGncsuOd6KgffcS9ylkXQGyCCB83kICpABiSY1+yyEsoKM4VKzxbHDk0x84AzV3Qr
 n/ZTLk5U71iZ48UQzKR59ns20a5Wb+1GcDp+g5Mr6puAU891RR+CQA+fqOuUIRfhjk605voI=
X-Received: by 2002:ad4:5aac:0:b0:6e8:f945:ec5 with SMTP id
 6a1803df08f44-6f230d9f19dmr188265166d6.24.1744657476386; 
 Mon, 14 Apr 2025 12:04:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzelK//k2TwD46eVAuZhiJNjDOOOFl3EoM1T+XqSjz0DyaIMYpfLn3sF+Nm6yY82gIZ0h6m/EK/PQS4Vwle6I=
X-Received: by 2002:ad4:5aac:0:b0:6e8:f945:ec5 with SMTP id
 6a1803df08f44-6f230d9f19dmr188264526d6.24.1744657475883; Mon, 14 Apr 2025
 12:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
 <20250414-restricted-pointers-net-v1-4-12af0ce46cdd@linutronix.de>
In-Reply-To: <20250414-restricted-pointers-net-v1-4-12af0ce46cdd@linutronix.de>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 21:04:25 +0200
X-Gm-Features: ATxdqUFggdvW0Cci0Y7dRfrjAmK6JyGKc4MbfrCN7JALN63x-K56mHIpeth7yd4
Message-ID: <CAFEp6-26mFztO-AfGrL0cScGFMR5Z3Sp1KOsUvH_FoJfK+8q2w@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Cc: Jeff Johnson <jjohnson@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
 ath11k@lists.infradead.org, ath12k@lists.infradead.org,
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fd5c45 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10
 a=EUspDBNiAAAA:8 a=ZS808JPYK9pMg9uJusAA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 3ZSpowigV-8OxoK4jG7wRlSo99TcxG0e
X-Proofpoint-GUID: 3ZSpowigV-8OxoK4jG7wRlSo99TcxG0e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1011 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=965 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140138
X-Mailman-Approved-At: Mon, 14 Apr 2025 20:03:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 OETJdvcRlTDOC3wxrm7MGgDibXakzm2Chi5+CwgMXn0=; b=iqhBsErWeoSHj9J/
 E045fLrifvanLVRlAnodQyBohn4gGtolujIB2SUUzOB1CPk7IVZSQYJLnzv/sIky
 T2iI/EjCTc12ZsEw3TC+51CCdKIZky4cIvuF0PxxWJ1QdEfyWQMEx5WISqWTozZR
 rM11Ayg53i2c/y79QoXyGCeXXJCYsmEuQEnjWeFN86mEyLl/iwqpWJJJcrfgGAR6
 qGCdp3F3nWKNtGwdcWxpsSuW2WJBas6WpIyhrCDp1YII3DT/ZEGP1MKE8ClU1gvI
 E2U7vHGHi4J8dcbvE3dPLT6pWrPt/zwGTj7+8T2WshytoyYsSToeth72Ba53alWO
 gvdZZQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=oss.qualcomm.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256
 header.s=qcppdkim1 header.b=iqhBsErW
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/7] wifi: wcn36xx: Don't use
 %pK through printk
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

On Mon, Apr 14, 2025 at 10:27=E2=80=AFAM Thomas Wei=C3=9Fschuh
<thomas.weissschuh@linutronix.de> wrote:
>
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk(). They can still unintentionally leak raw pointers or
> acquire sleeping looks in atomic contexts.
>
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_fil=
e,
> for which its usage is safe.
>
> Signed-off-by: Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.de>

Acked-by:  Loic Poulain <loic.poulain@oss.qualcomm.com>

> ---
>  drivers/net/wireless/ath/wcn36xx/testmode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/wcn36xx/testmode.c b/drivers/net/wi=
reless/ath/wcn36xx/testmode.c
> index e5142c052985ddf629b93d7b9687e6ba63a48e8b..d7a2a483cbc486308032709a9=
9bba9a52ed0ff59 100644
> --- a/drivers/net/wireless/ath/wcn36xx/testmode.c
> +++ b/drivers/net/wireless/ath/wcn36xx/testmode.c
> @@ -56,7 +56,7 @@ static int wcn36xx_tm_cmd_ptt(struct wcn36xx *wcn, stru=
ct ieee80211_vif *vif,
>         msg =3D buf;
>
>         wcn36xx_dbg(WCN36XX_DBG_TESTMODE,
> -                   "testmode cmd wmi msg_id 0x%04X msg_len %d buf %pK bu=
f_len %d\n",
> +                   "testmode cmd wmi msg_id 0x%04X msg_len %d buf %p buf=
_len %d\n",
>                    msg->msg_id, msg->msg_body_length,
>                    buf, buf_len);
>
>
> --
> 2.49.0
>
>
