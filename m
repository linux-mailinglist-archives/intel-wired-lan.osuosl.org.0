Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 643B48AEA97
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3BFF81FC7;
	Tue, 23 Apr 2024 15:17:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TJ8UCZ2MExsr; Tue, 23 Apr 2024 15:17:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E063981F87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885433;
	bh=INBMOWrJinYdQq0rT+CqXLINYZC8ufgEImNzRj5Cjl0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jxTt8et7gH99RLCBaYm3SieK/mb2GS/hPBCmNdHQJL2I+7piKMb8Fv+4kMYa7y6As
	 r03s/62gWgE1aq/5Py9nddu+ZBBT2CUJo54EGYJxodZTWDORFPFTMc6EZN/sIeSxjQ
	 q4bpBAMgUyyQSm9K53T4U4NIQ7NmPQEbgbxFJYg2jU8v//LY9lm/hYLI8J5UnsAkNz
	 O9LabefuDPVtqIGg+TyR9NKOsTs63XFo1f7UJa3JhKBNS51JdmLvAfkSWiUJwWRJvZ
	 lnN+A60Jc0LzaQJxr4iWsTpk+6khPPQOL0nvFxesHNcpER7aFhDlfiQ8rgVlcehgTO
	 gG1U1Ux0+fZMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E063981F87;
	Tue, 23 Apr 2024 15:17:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 096BA1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 007A94013D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1WeyzfoUO234 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 10:54:00 +0000 (UTC)
X-Greylist: delayed 373 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 23 Apr 2024 10:53:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3F9640238
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3F9640238
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com; envelope-from=sgoutham@marvell.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3F9640238
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:53:59 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43N8Jxwi011727;
 Tue, 23 Apr 2024 03:51:27 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3xnngcvqrn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 03:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwGsC3RqVxOCjVib12p1f25CJTGCSG5CgTlgU++AS0EuGm/FEdZrwXMEluYo51qRhWK29k11aX4uXBeNmVA/50TlB5zHOUDGX0+7rY3LTfGkpyRbT3KIWGXFYu0qVxq/uPLJMQm12JDHM/10Yyr7XkEkgWQZRF9jDtf4Ye5/VR1PjhPYDmTSYLFMR+tHRCyAkGtYvTOhhPFG/Ei30IIOPY8uP0GVvTyvDNKgSuJMAXbYkFZ0bLO/6VWcW30cLdrOMgcGfNP3EUo9JFUCtUOqtwoVjdN71Jdd5fbZVOcJdwaPEfIxUiSrPMd4N02GAi1Dfb6Y9MBwjc+iSAwc+mzJow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INBMOWrJinYdQq0rT+CqXLINYZC8ufgEImNzRj5Cjl0=;
 b=kPHMS382eynsm9nQKeVBSXnp03JtacZHMkNey6VFq9VyN8sTDDl5nUAq6Dda7Mi6aVAe/BGB2LlXuxWlPOpb/E9satRYGavDYDytNFAIrP1D8tRFOQ47bA3BCgXB69GE49PdagJvMaNVi13o602Fnhp/mLNe+em3ofzJvDPfXxQsTrUKlSjhK59P+gWv8SbjKq35+r+xJqOdNLK9R1MYYl05Bt79aA4+pWjIB/ETdBy4WIyCOGkZDgvLQ4eOMYqGBLs2m+L3iLGV5W6EZeSeEWxzAQQRo05SAxycgYXH92danrPuJJ75SdCqExvad5svNd+3/lAMduTBXir1IRse+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from BY3PR18MB4737.namprd18.prod.outlook.com (2603:10b6:a03:3c8::7)
 by PH7PR18MB5751.namprd18.prod.outlook.com (2603:10b6:510:301::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 23 Apr
 2024 10:51:25 +0000
Received: from BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::4c91:458c:d14d:2fa6]) by BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::4c91:458c:d14d:2fa6%6]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 10:51:25 +0000
From: Sunil Kovvuri Goutham <sgoutham@marvell.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
Thread-Index: AQHalWwvbAwdkN+CbEaGOz0lmaTGkw==
Date: Tue, 23 Apr 2024 10:51:24 +0000
Message-ID: <BY3PR18MB47378DFF0AF20BCDD99EC9F0C6112@BY3PR18MB4737.namprd18.prod.outlook.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-10-mateusz.polchlopek@intel.com>
In-Reply-To: <20240418052500.50678-10-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR18MB4737:EE_|PH7PR18MB5751:EE_
x-ms-office365-filtering-correlation-id: 00587b41-c343-462f-040f-08dc63835234
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?us-ascii?Q?GQqeiGrZCQ2Pr3SAB+Uy+r2406fUMIdTA/6NYdBHIEl5eZI5PXLsDECqgViy?=
 =?us-ascii?Q?6HfIm6HkN8LSYO1D5GXg0XEEEgrGdEkPdGqCfAy45lXER711je+MuldtHo8a?=
 =?us-ascii?Q?EQNlBBABsxHXZOGA10ZjGXXCrYeef0FP1+4VxHRXNvhuPfORz/32t22R4B51?=
 =?us-ascii?Q?f7EYkUFj7BNTYYnFeb3uYFSTMghvTOPAUh3W0XWzkalUSyG3DdMBRiCpsDO4?=
 =?us-ascii?Q?OwUzwyJA8QZv1G1guzm/eFfzMP4+wP63tPQPvfFllX31061te09hGE6z1t/u?=
 =?us-ascii?Q?2XO+1xrREqZFdRzz+9XhmNM1UJHH1byhj9rnS7K2x9fkZ0ZwDWNErRxcVcOy?=
 =?us-ascii?Q?E7gvxlTRsm8WPxdqaYQWu1faP2z+MNkfHPfsDBpiE8e0c6VoRMTZsAOEQ+F4?=
 =?us-ascii?Q?Blkvc3uMcEhI0RXfR72Dny0KO2Qztz1HmsrmYevoCeiZVElHUPM+6dm9wb6T?=
 =?us-ascii?Q?vvHNkSp9OybXZfe0RIB/Kc1eCAF8im7XdjH+KAoI7AQdfKU+mKgPhH6d6bjU?=
 =?us-ascii?Q?cfbgSWoW44BWucUXIZB/bQ4+3lQB9bwdETGzFD9PUKBBtsUak+UZzS1vRPQ4?=
 =?us-ascii?Q?IbgPNgNjTQAcMxh9WcvI7+tTnvwffq385rDZQVUd2+RJ82EXk427r/jyGr8l?=
 =?us-ascii?Q?pErIbc/rJCwZnXvv4g9EshZ82+MaPSQn8Ar1ezvC0YYu0QdlvR6Jj9rQFjf5?=
 =?us-ascii?Q?lW0CwIKzR4lWsYEt2X1xOPzkTQaQaGw55XEmdZ0lpfkyOxoJtE+xZaEWGJhw?=
 =?us-ascii?Q?RVsK5jHEuafmDX2x7glWnIOvApMS8zfCN4mfaORx7yD/zpBME0xUZAp3mNB3?=
 =?us-ascii?Q?D3bEVC0HyewNoQoSLnTAnWYTMti8+185l4hhdGY5vzOTcgsE10Zcdrl+QEAj?=
 =?us-ascii?Q?JbWTzvHHifTdsDxZFRj+yG0rub3imlEeSO9wMQqwalAxCEAB/u0IFUqRg73P?=
 =?us-ascii?Q?cabDfZXFCGjywtD/JyFGhnhp9Ikl0iN71ItO6tiDP36YwpJUe3txHh6VMG2L?=
 =?us-ascii?Q?Cgys8nzVS6V6t9um4mEER2zwJqAOGkPrkoW1Qe6umYdPX7Y/Elg9oGc5QqsW?=
 =?us-ascii?Q?fssDm3uQDUI9Y0h910+hWTAPwINnDbA0Bji9QExU9SQdVmGzyq+p60fLfZTv?=
 =?us-ascii?Q?7SwfkX97fWebpXgVkrqVMhTAYkNPsmfFjFfYqPaFup5le8b8qzqOpBtT7rFs?=
 =?us-ascii?Q?ElivY9IRS2reGh9+eaqVGX4DTfVQKH/lhBEyJlNgwhomXtAtWBRaHB8JHdec?=
 =?us-ascii?Q?I4Lez1aDVLK+sZ2t+C3jz3CzRMG36SA85MS971WyZ3StcAChA79xygxCYs3t?=
 =?us-ascii?Q?6vGXxrjjVhy3TAJ/7JnStumHbf6ZDedgR5Ovk3Mpu/DMpg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR18MB4737.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tkCKESSEdB5nZDns0Za8/cCY1SmXZOrXn5WRz7J9F4ynEZvUVwD8JzoMYyEr?=
 =?us-ascii?Q?fl5QBYrmtDsuZFUU0ovWveXZkvbz/CO6Za1Q6IjdCA8PvpCNugR7muS+4DAD?=
 =?us-ascii?Q?jX0NO/fOui/NqKerq3Zh9dmp+dLDc9AatiWRIgjI+xrL6rMqp0u+xr/1b6gT?=
 =?us-ascii?Q?PYfvR2kgMZmXXq5FK08KwTPgN0SmoQCfdlWzoroSPB5bOnIrzrYpd4u04fPm?=
 =?us-ascii?Q?OoDriypIrOeyt3EkoecSgQqICqjmLq2+G6AHuA3LKlo513FOVYX6h5Lx9jw0?=
 =?us-ascii?Q?Flj6HMkiyb1jxEOSGwZqS3QQxcp1YE/FP6AKZCaEKdT6wsYAhUa8wwrTDUBG?=
 =?us-ascii?Q?cI9XrDziESxhx0yUxP09TohIUQjfmBZnViHC2t4V+aA9w9GuAy00Y3zpVRZ6?=
 =?us-ascii?Q?fVeVpKJkKQaKFeCUlIcYmiaBka7RMo/rznxVB4RvucXXp/N/DgAxrAN83cCA?=
 =?us-ascii?Q?cGUxXmb0EnwFTQQCr9Q8kd0ycjo4zZGbqmlhEl0i2gEoFn1Ad1bxOvWeGesu?=
 =?us-ascii?Q?gj+REhSY5/HdMZlaclPU87gl3rLv+BlpsnAprngrlTB6FX2wWGjpjylHV/l5?=
 =?us-ascii?Q?JM3GyGYuGN2KcVgXK0I4P4ECgAWF19uJ+GAAS6VrYDRED8wxhMUlV0hgdxfp?=
 =?us-ascii?Q?np5s7VSvlgJKDn56kNEn/9ve/Bdvech/Y69WnkQj5d5hQyrikrmV+GFtIdIn?=
 =?us-ascii?Q?Bg8nDK5L6rMPRppg+8vlX9I9mHuNcgw/byX27pEIRGrtDuTLIDOqxgVRkk4T?=
 =?us-ascii?Q?iHQQJRG4x0LainJI9nfzA9ikd+VS7ZNye0+tnE2W2EEqwv+j6g7O1Syr63Ak?=
 =?us-ascii?Q?GOaLVmZV5oqUh+xVrFlPVt/0p54rzYQj5e/k8Nt/utLNhjjgccr5wBtcOOht?=
 =?us-ascii?Q?PjIF/HoUe3RAHOrTcR6NHTsEj3m9GWbmritVWfmKa3qVq7zhoaCy0RCSmaOo?=
 =?us-ascii?Q?wMJ2nkiMnqV7o9eAgENXpHaAERybPwWpGMd8q7MsMImqcmsTYdnJ/oF3MRLe?=
 =?us-ascii?Q?coVG0YD8Kh0vUyvLv59AM77z2z9FbGhYG6GBAIsUqXkYvv9Baow2mZCDS/GL?=
 =?us-ascii?Q?ZyfT10knm4Wj7QHUIfIjDkb0HspWie0yb89ybkXBnB8xIFOvjatMjfIToa82?=
 =?us-ascii?Q?jnk6quxoHkaIlgg17dVvMsiQF0XLK59v16etrFxvGal+gU3nZTFZFxlnFk46?=
 =?us-ascii?Q?9UxqnkpFcLVlkl3McfFv6dAmeyNKUAl7YnaNhqefcgbTNnGafUWkqkqvrB4m?=
 =?us-ascii?Q?ayoaxP9xDQq71W/i2AxuPn6xDUHf99KCJtQPictNFdlE8IrZ9LyT5sNsf/yO?=
 =?us-ascii?Q?UjWyplKBza5GjBUY/ROgnGo48x1xfVnhJPXUgIqYiHozyWTnYb6LHGrtlX83?=
 =?us-ascii?Q?4nB8aGp/cuhBOkQdX9NlDgFgmidjHM7j2tJDC/HDcQuD/lAZDFnLBCF7lTHa?=
 =?us-ascii?Q?BzTzOAL4TieDJL+YYoJqHxqFXjflQFocqVseiUfIu3ZPGcbW+rf38ACOTvtY?=
 =?us-ascii?Q?OfNsARyv5UjJ8yOoxyJwtCQWrCFrRNQG9rqK//Wqyjy/C6PH9dcQDu5ycaCS?=
 =?us-ascii?Q?nkdqJ9hP7k/4VGUhQnZ+zwWyRT+pKKiuH4MBG/eC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR18MB4737.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00587b41-c343-462f-040f-08dc63835234
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 10:51:25.0384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VPcR5MQ+qKjlp5wn1xwBroo0D77MTglCm9zKWvbObdVVBiyRn0bZe0b8TQdkbkJBwiDMy1i9WphJbz3SKnAUkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR18MB5751
X-Proofpoint-GUID: M4-X1eXaIUCXR8T5HtHE_KHE2WqouMDx
X-Proofpoint-ORIG-GUID: M4-X1eXaIUCXR8T5HtHE_KHE2WqouMDx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-23_09,2024-04-22_01,2023-05-22_02
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=INBMOWrJinYdQq0rT+CqXLINYZC8ufgEImNzRj5Cjl0=;
 b=iC1VbUuQP7xMHdRC8TA0IrONsxBKNkXqUlpKWx59jJ4kwhWpIfpYDlUBebSPFTj6dq3CN4/779bVhrzukWAIEoFAjgYu20KrCy310tAPTmu2qrAF62oFNc6QSzVSdNVsY2eh17QaDu5cAiA2MKZ2rLrkZR8UisbXtTW7B9EHqP4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=iC1VbUuQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 "horms@kernel.org" <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Sent: Thursday, April 18, 2024 10:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; horms@kernel.org; anthony.l.nguyen@intel.com;
> Jacob Keller <jacob.e.keller@intel.com>; Wojciech Drewek
> <wojciech.drewek@intel.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>
> Subject: [EXTERNAL] [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: ref=
actor
> iavf_clean_rx_irq to support legacy and flex descriptors
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the fl=
exible
> NIC layout (RXDID=3D2) as a member of the Rx descriptor union.
>=20
> Also add bit position definitions for the status and error indications th=
at are
> needed.
>=20
> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
> descriptor, including the size, rx_ptype, and vlan_tag.
> Move the extraction to a separate function that decodes the fields into a
> structure. This will reduce the burden for handling multiple descriptor t=
ypes by
> keeping the relevant extraction logic in one place.
>=20
> To support handling an additional descriptor format with minimal code
> duplication, refactor Rx checksum handling so that the general logic is
> separated from the bit calculations. Introduce an iavf_rx_desc_decoded
> structure which holds the relevant bits decoded from the Rx descriptor.
> This will enable implementing flexible descriptor handling without duplic=
ating
> the general logic twice.
>=20
> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
> format instead of the legacy 32 byte format. Based on the negotiated RXDI=
D,
> select the correct function for processing the Rx descriptors.
>=20
> With this change, the Rx hot path should be functional when using either =
the
> default legacy 32byte format or when we switch to the flexible NIC layout=
.
>=20
> Modify the Rx hot path to add support for the flexible descriptor format =
and
> add request enabling Rx timestamps for all queues.
>=20
> As in ice, make sure we bump the checksum level if the hardware detected =
a
> packet type which could have an outer checksum. This is important because
> hardware only verifies the inner checksum.
>=20

What is the relevance of these csum related changes wrt introducing flex de=
scriptor parsing
for HW timestamps ?

Thanks,
Sunil.
