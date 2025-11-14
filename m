Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC64C5E35D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 17:25:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB3938156A;
	Fri, 14 Nov 2025 16:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f97yyHT4OeNb; Fri, 14 Nov 2025 16:25:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A1CE8154F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763137506;
	bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HF5ocH5KnQi5zVNyVhsv3z7SybnI9lnFlQmW7/UfPk8hujYIUWg6F5pEzzhclxQkL
	 YLbG4x2qee58sXGn6QkJIrWXc/vF7YnwpXxGs2Rfgb9n8Ww68n52cUBOtTDI/hVebg
	 OCaGoorEZjZsYVzKHPTCPEiMpWrdjB7F8tSLAsV/aBgGpvkHok886hvQ9rXbp7c79U
	 PHBx4S9we1qNmgqyDLr21yq2kCrqkQnssBo+OVPAXjrwwcw9nfPifUJJnxHcK5FSnA
	 ICnrla4U2IaduvZOkrzBC1NdrTGCFgtoz80Qn9pdKQMbUw4Tj8PS8uBU4KmswbMGfv
	 vpljpoWDS6Jbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A1CE8154F;
	Fri, 14 Nov 2025 16:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EBA37158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 04:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0B7340AA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 04:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E-zWcixbRUNc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 04:12:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.180.131;
 helo=mx0b-0031df01.pphosted.com;
 envelope-from=dmitry.baryshkov@oss.qualcomm.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03F7E40A34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03F7E40A34
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03F7E40A34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 04:12:33 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5ADMbDIw1697454
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 04:12:32 GMT
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g0rpe-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 04:12:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-891504015e5so474110885a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 20:12:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763093552; x=1763698352;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=;
 b=gayIe71GU7J0+pNYGasKzc91aVDDDk2ejdfi9u9jTR7qGTdx4QqxfXGkbq1roXWDIW
 Hc6ZCScFl8ga8hqbR4WUX2Yr0i0upxT35zdtIoBGP1uoFbfENSHUiRoiqleCIP+7R265
 XHrYDMpF6UODd+Ab/pBpZXpFGYtNqK+7+GRmuiy2P4xIzjeCFzs/k+KF1RrOpKqoSyBp
 E/6lLRJYfBKjfcGQeRzXafEWIwOvTUab35huPm3JFTs/XwjEN5geDF/H6fKe0OHyfRRe
 oKQgHlV3CqlI+IDbMZXOYztggit+FElayCQ6zAerNt6iZZozQEi+YcJoR6twZ14F/P7H
 WxxQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOhCsKpl1FiYGRMYZF/fHwLnOpC+DMP6Ve3X+1Yi73R6JAXYNZIiLXVMHwlfWOet6xHOE0qO/ettQQPTcp+mU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwnkSkFT/o4WfkTVcw0shELMnuYIBg8ONzkZ3etm/02S87zkk8M
 w6Itrc2Xerp0T2Dd5sJt9UpGIQ9+m+862hmgzYsbChzBD9AlR8OsPYU98HPysajjz5aV1Gm/DMI
 pc+rnGNb8EDoNIYFxxUhLTbrahvOHubzfHPvRIWc8kbGPlflHemIC0r9o9htP7/IAsbqvHyuA
X-Gm-Gg: ASbGncs5tLi2wm7AEZmzKayU1pSnZPAnL4mnZgCAIJJrvlhBxKLiQ0GLsy776D9wZ2q
 6JIHXOSrT1WO99mE14Ghc/OQBCmtc98BvtHnZu54vA0LWDPOWgWk6KONW17LO8QTM/PVzgm5ddP
 pJcP8/uW9L60cHoJoGxvMMhLaFCRjX45mnW2yX1e42DjglQavqLTUqdu82BJ0k1MT48PvssjNz2
 fBlH/hti7DRAz+QXUBJpB8SA349sdRPSPRulW1oEnUJ2K2j2uy4iPHVbpN0kpgqYW6T+XYkrn+m
 7H06EDZ3vN07hryNucIKABy6C02geES8Yj1LxOkX1mllAuwfEy1/lKVaontTkxVCGpPeHMRjLwc
 akv6ngRDQo57Wkjpr8lHqpdjm3GIla992tIXiZ9gH+gEmEjF1of1ttcWpiNKsE07VQK5CmjSQQP
 zqahM7+t/qsVG7
X-Received: by 2002:a05:620a:4628:b0:8b1:ed55:e4f1 with SMTP id
 af79cd13be357-8b2c3175d59mr235426385a.39.1763093551868; 
 Thu, 13 Nov 2025 20:12:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRBRFxxiAD30mEJm55HBtKCBqJwVeb/nqEO1wa7PZ+U+vRFrL3SI4k/Rw4EJ92OxtkmKQ+nw==
X-Received: by 2002:a05:620a:4628:b0:8b1:ed55:e4f1 with SMTP id
 af79cd13be357-8b2c3175d59mr235424485a.39.1763093551352; 
 Thu, 13 Nov 2025 20:12:31 -0800 (PST)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-59580405a4esm784867e87.95.2025.11.13.20.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Nov 2025 20:12:30 -0800 (PST)
Date: Fri, 14 Nov 2025 06:12:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Corey Minyard <corey@minyard.net>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>,
 Jan Hoeppner <hoeppner@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Message-ID: <ngzyqzrjg2msv6odahkirdipjizbpaecfscfgnic3su5fl6hs7@qgdb53svq64p>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-7-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-7-andriy.shevchenko@linux.intel.com>
X-Proofpoint-GUID: 6ZbadXVrIPSUgobi_RT5Oa3kgNAvuE9R
X-Proofpoint-ORIG-GUID: 6ZbadXVrIPSUgobi_RT5Oa3kgNAvuE9R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDAyOSBTYWx0ZWRfX+X3V+LFB4ati
 92OdKepfimzOva4LHLCWHrPuBZXqSSoV5oim6wiuh2SPIFkIndptfKl20ZXXu+qs+K/Gc2yZOS7
 2RC6RTS6y1GDEFXp9I5qPCcirbyV9XoaQ0k9nP1rpEJzETEz899IEUxmcwbnz2wWZu+4Gd3Ft82
 oXAfwAJFfTuzvS6aNbOhPntR1ozegtGUqu6tTzZmntSftW4pHu4yR2sMK3LT/TRrpQQBeVzPjbQ
 hl4D4FXKD/VgU0J9csiL7sBDdMg25KmpGXQ9Y70zKSu8chbxIL9fVxEIOCAwlpoHCr3VbUsQ7Av
 mivG+S7OKPEb7rtLAZxfkYOeiX4BaGj7TqlNCcSi6kAZLJmVcTc3DLKY8/fAv8A/bpIf4rbeLY9
 iMd16dgiO/YlpUUsG7xFnA9Isb+7+g==
X-Authority-Analysis: v=2.4 cv=IM8PywvG c=1 sm=1 tr=0 ts=6916ac30 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=JNz3O4sEs4oywJvo4n4A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011 malwarescore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140029
X-Mailman-Approved-At: Fri, 14 Nov 2025 16:25:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=l9FUBbeUidxIV00pdQyQahKH
 PpoxkuEk9fyNczKyhZ4=; b=WcdvIvc3sMDYJHBly1X7GlPj50GGKCEK4vrDj8k0
 5eaZ80++Ws3b6M4a/w2eVgp5fBZPqpReXJ6xcZvCuGqlyHQVAUPNMJplXDtRkmjR
 y6847o+zGxT2XJUEtVt8QOs1dNpy77MXiVZuOJgYMs0BamIgUtjw2hTVBYrDWjPI
 ByZ746JdSL8Gv5MgaoTNMk2yzeUNW4jCf/D2j643Vd/vNt+46rBlvy+jz4Ihw0Z+
 fTd/SLbn6SPCPWVriGZp93nSNSFJRad1vxT6ksE51c5WW0OqhiOxjWbi0pFY79Eh
 201wVoknTjIeNpA4GWGoZTCf94s18YBclqS5YUrFYMV7Vg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1763093552; x=1763698352; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=l9FUBbeUidxIV00pdQyQahKHPpoxkuEk9fyNczKyhZ4=;
 b=fn3NSjck1Dr65QZsyg56YSPkQeDLWZIRsJj6XTZbIx2/wcw4+6bgBZ/5aCLmVL4AkZ
 44cwXhRmAPDObyFL3m+cfRiBNGBETKH2cT7ULW+csruVuoovujhBLb6z1dTTTWsx5wAu
 xgsoyNEUqXyiSnjnqyowMvFG772HtYSIvFHtwpN1Trqy7gttqD8dIPtExsOsHARtWRZ+
 1A0rkGWFiOuCINC52Hf2u0jSHr17qkPXmbljx9Vwz+Hg6qWQ5eMUWZCJveg6BtpNdqQd
 ddJ6grCQtKADEdou9sMtnBT1GrTX/Z32xZPtGNvN+GfOnA0LVH/fHQ3MQCaNJ3imYpmw
 Y5VQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=oss.qualcomm.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=qualcomm.com
 header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1
 header.b=WcdvIvc3; 
 dkim=pass (2048-bit key,
 unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com
 header.a=rsa-sha256 header.s=google header.b=fn3NSjck
Subject: Re: [Intel-wired-lan] [PATCH v3 06/21] drm/msm: Switch to use %ptSp
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

On Thu, Nov 13, 2025 at 03:32:20PM +0100, Andy Shevchenko wrote:
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c | 3 +--
>  drivers/gpu/drm/msm/msm_gpu.c                     | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
