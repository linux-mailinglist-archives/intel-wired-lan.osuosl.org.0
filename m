Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5C39630BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 21:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 612D760D90;
	Wed, 28 Aug 2024 19:10:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6mT78_dWB9cE; Wed, 28 Aug 2024 19:10:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABEE960D7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724872249;
	bh=ixrVobl7PBzkDjEEamjA1UE3fWso9tgP4GcEOoyeo1o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CoRN1o8iBTtxoisJJqF7NvPr0vFhZyoAax4+8MKhTZLI3ccVW7VXGgZCllJWV0LGN
	 l8qopS0lRt6B0TihmlzgMOHZYRvlvp1wQKdTpTgDiVdDcyIA/Mov0+hlummTxQgNCA
	 Oi7jgMyVaaRvj8WxOO03O2FIZliuNO34blYemOv0sRurx/FHmknvibtcH9hu8wGV6Z
	 VTEK5e0Oqf8ZN2jeFXyYIHA4CZrZb1YP6jZv6qPwEv5lyiJ9/Ttu8RBoWR8m2Fa47w
	 QYmypygPqXZXIWrsK6zqjDPEJttXP+0pytw0rAHELdJJDl+iL5UA6LGR/IYn7KZ5/m
	 H5s34yTGPDHtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABEE960D7B;
	Wed, 28 Aug 2024 19:10:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2572F1BF377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 19:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11CB060D77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 19:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RGye1JLuLmnz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 19:10:47 +0000 (UTC)
X-Greylist: delayed 1397 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 28 Aug 2024 19:10:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2975A605E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2975A605E5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.180.131;
 helo=mx0b-0031df01.pphosted.com; envelope-from=quic_jjohnson@quicinc.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2975A605E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 19:10:46 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47SAv6kk003657;
 Wed, 28 Aug 2024 18:47:26 GMT
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419puujtp5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 28 Aug 2024 18:47:26 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com
 [10.47.209.196])
 by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47SIlOjK004912
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 28 Aug 2024 18:47:24 GMT
Received: from [10.81.24.74] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 28 Aug
 2024 11:47:24 -0700
Message-ID: <ecbc8cf0-94ae-40a7-b55f-5008b9486123@quicinc.com>
Date: Wed, 28 Aug 2024 11:47:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Vladimir Oltean <olteanv@gmail.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 <"netdev netdev"@vger.kernel.org>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
 <20240827-e810-live-migration-jk-prep-ctx-functions-v1-6-0442e2e42d32@intel.com>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
Content-Language: en-US
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-6-0442e2e42d32@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800
 signatures=585085
X-Proofpoint-ORIG-GUID: ukgcSa5vTngftONnM93-2dXm3zM0p6Hr
X-Proofpoint-GUID: ukgcSa5vTngftONnM93-2dXm3zM0p6Hr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_08,2024-08-28_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 clxscore=1011 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=944
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408280136
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 ixrVobl7PBzkDjEEamjA1UE3fWso9tgP4GcEOoyeo1o=; b=ekJfc6PiDvpaoh1I
 2raG6XRmMXRm5PchvXWn14EQEQff81YlNPowDrx2/NJlxIjbHto+FHrIX+GvYkXW
 z/gh+IehCL9BaRJ6yJ0W0F/Km11KnhD/CAT+bnUVdnKx1AsWFIT5gtPfd33Yp5zh
 A7dfri7WqFkHwWjlebPwcpVUu1xM8TxEZuaqIfzP66ys8BhEdVJR+MkCSDfX8G0w
 UKChOO1rJUXtot4cg43ToUXmiZE78o+VetKBY+v6uNpBuyJBvd0d34XuGP6vAZzE
 XIaLp1fz/Vap3NosZSRQMiXlWb14bAVT54MFhRP+OAa9s6NpRRi8cYWWfWleOnSJ
 1Mg9UA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=quicinc.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=quicinc.com header.i=@quicinc.com header.a=rsa-sha256
 header.s=qcppdkim1 header.b=ekJfc6Pi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/13] lib: packing: add
 KUnit tests adapted from selftests
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/27/24 14:52, Jacob Keller wrote:
> Add 24 simple KUnit tests for the lib/packing.c pack() and unpack() APIs.
> 
> The first 16 tests exercise all combinations of quirks with a simple magic
> number value on a 16-byte buffer. The remaining 8 tests cover
> non-multiple-of-4 buffer sizes.
> 
> These tests were originally written by Vladimir as simple selftest
> functions. I adapted them to KUnit, refactoring them into a table driven
> approach. This will aid in adding additional tests in the future.
> 
> Co-developed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  lib/packing_test.c | 256 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  MAINTAINERS        |   1 +
>  lib/Kconfig        |  12 +++
>  lib/Makefile       |   1 +
>  4 files changed, 270 insertions(+)
> 
> diff --git a/lib/packing_test.c b/lib/packing_test.c
> new file mode 100644
> index 000000000000..52e039e2231b
> --- /dev/null
> +++ b/lib/packing_test.c
...
> +static struct kunit_suite packing_test_suite = {
> +	.name = "packing",
> +	.test_cases = packing_test_cases,
> +};
> +kunit_test_suite(packing_test_suite);
> +
> +MODULE_LICENSE("GPL");

Since commit 1fffe7a34c89 ("script: modpost: emit a warning when the
description is missing"), a module without a MODULE_DESCRIPTION() will
result in a warning when built with make W=1. Recently, multiple
developers have been eradicating these warnings treewide, and very few
are left, so please don't introduce a new one :)

Please add the missing MODULE_DESCRIPTION()

