Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DC1670D36
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 00:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4B4860E6F;
	Tue, 17 Jan 2023 23:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4B4860E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673997844;
	bh=P1rqwTaDHFUF7Mzu/3C1NN4YE36pRjBYCoNl4L+SsVI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JKIhWRwFs+eC0hL/RB2hWCHZUcyNo9mUdE8Wh1waac95XZ3N3TQVOquLdM5dzxQYX
	 5KuZBgEE7eCAn4XREmBh7lYferEFslLbewbxDP7tYC0EkLlBMGrNP/hrMmSVWV00B4
	 iLmRTMYK3rKIEuUCNfcDtx4UFp6f/obc5RFrucwhIa2CBy09kaNkdn6yt1ij39aObU
	 aG6uxVBnwDo6GbEHqRa52LyViniKbF7vFo0PYIfAkUy4JnzC7INQhhEDijJiP/GyX/
	 Uh4R++Bhd8nGiF2RZSz80/ioh06Lcx6OOjJSICy7wYyjwnFQerm9dLvw7FyU8MR/XG
	 WTaQJiUwgIevA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tHymzkYMcnnU; Tue, 17 Jan 2023 23:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA55960E59;
	Tue, 17 Jan 2023 23:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA55960E59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01CD51BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC1CC81309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC1CC81309
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XnsnXkh1UTv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 22:14:16 +0000 (UTC)
X-Greylist: delayed 00:06:37 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0470C81276
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
 [67.231.153.30])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0470C81276
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:14:15 +0000 (UTC)
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 30HJwCGM009251; Tue, 17 Jan 2023 14:07:14 -0800
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
 by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 3n3u16fg46-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Jan 2023 14:07:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jf7O0wu7t1sF4nBBH82q9b2sWUBWfumah3cFXJE8tCKZDwdwOz68lu60Vkjq2/iwIZLLe7M2s/l4iiTnVPelnEm8VmmhLRJhwRW2o25lfJ5vALJScSv+izAZaknm5U4iDTOiIyTzITOucn+SONSnbTQPKcEv+L3yh+WkwpvHaS3OWw6c4Dg2XvFzvlAZyuPJQBk0d2hrmcb61xIoUB9zcFT0vDGUTpGLQwC6Ve1RqnMQgm1kASJgOpnsLgoRgOiC38twU1PPEBT6BQVsenYAVKLI7l79lSbwjZfVDW/XR0mNiYpSWybfHqN4DEkCPX+7e8Zg7YfBRsWtD8+ZDaOsDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5qUzvDCShvh+OjV46wq7elVBlLXUAKUnCywa+adcegU=;
 b=HMIt3RCMehS4FErsTORAL+rCL4fmG2JwXQhdBl6Ma2a8XlW9EozoRwvGZ2IYjWHi/Us0aCE1Hfw/BOgyZGLtn/UhKqnstD5bJuymz7HesrkvsAYXK0OGsY+W5Iizn6dijANBLkO8Qy7RvsRIQQg825kcUi9630NEKUrrbYPxBzF+Y74ukRdUErqvqSixO4OO4zm4pl/FS3SrCmmUWYi8zxves8DeRgsBfvKlwz02AaUUdXxpjDPupdKnZsd7XC3MWyrxfSn3lA1Fq/mYOR/q5c/tM4zXZeDZFLgxI1oyA0HiNbNrUtckX2ep1todZHTCRodnvtTmcP1zj/Rw6fIrNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=meta.com; dmarc=pass action=none header.from=meta.com;
 dkim=pass header.d=meta.com; arc=none
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com (2603:10b6:805:d::27)
 by CO6PR15MB4178.namprd15.prod.outlook.com (2603:10b6:5:351::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Tue, 17 Jan
 2023 22:07:11 +0000
Received: from SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::3cc9:4d23:d516:59f0]) by SN6PR1501MB2064.namprd15.prod.outlook.com
 ([fe80::3cc9:4d23:d516:59f0%4]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 22:07:11 +0000
Message-ID: <5e20044c-6057-e5c7-624b-a1373c30fc12@meta.com>
Date: Tue, 17 Jan 2023 14:07:08 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
To: Lorenzo Bianconi <lorenzo@kernel.org>, bpf@vger.kernel.org
References: <cover.1673710866.git.lorenzo@kernel.org>
 <36956338853442e6d546687678a93470a164ff17.1673710867.git.lorenzo@kernel.org>
Content-Language: en-US
From: Yonghong Song <yhs@meta.com>
In-Reply-To: <36956338853442e6d546687678a93470a164ff17.1673710867.git.lorenzo@kernel.org>
X-ClientProxiedBy: BY5PR13CA0008.namprd13.prod.outlook.com
 (2603:10b6:a03:180::21) To SN6PR1501MB2064.namprd15.prod.outlook.com
 (2603:10b6:805:d::27)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR1501MB2064:EE_|CO6PR15MB4178:EE_
X-MS-Office365-Filtering-Correlation-Id: da45a1e7-da22-4a87-0e5d-08daf8d72ed7
X-FB-Source: Internal
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AgL7NpznLQAcrVq56HV7r7ghGuCdW9EHtWlvtpx5W2jcfW20W8dyhvlToGfEMoaR5nM/7s8a7fPFLLiku4n4ognayk+C++AZkgB8Du+Q5QTWs2B8EPVKK0CEUxLd9Yp5/z7BZ7LOJ5BK03Gc3KSn7r5T+N+TR5fFvK7dgvhehsPheCFr/Fb3znFAyDG1/7ExHY0/p/LRczjwHee+HcrkYxnRX9WQivq67XzELvjX8eGr1fxZiuUkuHMWaJ6AsyEilu94MTrrQ5WleEGwbcTCMmJqTE+xdXz98wqCc2tNDfeHcJhunDm9LLaMguxiua90tqLrb1NP3I7K/pobmW+g3AiTvhEP2AA2jOL7JHYqk95KsRHrzpwvXxG8LEmWFNiF2XCtQeW0r2MNeKZNkDhmxk8FIm8CrbdkKzNQ1AYD+J8xOD2d7k7BN+RQ1C2w9AJSt+fIkMBuru1DRhT/LHtGEacycwJjja2F7tLCMjRWN23ZWM/0CgajLWhsdoHz0M4TzvRLyOnC5QKZ0hAUOMHSoIDTioJ0N4ttUx+YOW5JECP8cfLwwZGeTiTvBR+nsUc7/8iUj9nhVWPh4raEz/UkvZpxX5LE3/OvEva+vZ4vqi19LA8EWAcHdoym3Yl4o0q8BBY71cG9pSyvwRTgwPEvs0YyXEJcSRayOKbxGL3Tsu69PmOtt+/hX9P45e4FjECqAiuufcdjAD6TRtgrLgHraBEIsmCaqZeepYj7T35bgHs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR1501MB2064.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(451199015)(2616005)(316002)(86362001)(31696002)(31686004)(6486002)(66556008)(66476007)(478600001)(186003)(66946007)(6512007)(53546011)(6506007)(6666004)(36756003)(8676002)(38100700002)(83380400001)(2906002)(4326008)(4744005)(7406005)(41300700001)(7416002)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M29Lc2N0ZU9ZTmM1azdicExZUzBpOW1rYWxQWEdyUzBMS0VuVWpNNUg0OFR2?=
 =?utf-8?B?QmUrMDJ0QWVweFlvYW1qM2x2UUp5TGN1dDdOS3BDL2hyc1BpV1Y1Z24vTVR6?=
 =?utf-8?B?K0xiaVg4UzdhSjc0RDRLY2RLTENCYnFJSGV3RStMeTdPVDlvQzAyZ0c1dWtO?=
 =?utf-8?B?SS9PVVlMaFJ4dEF5cVZWNzhVNW5Ob2x4UGZuNENzMXowOE1Bb09xTVB1YXZJ?=
 =?utf-8?B?cm1BMjkxQUs0MUh0UWpUNXArTGZLZjF6WjlOUklEa2p4Q3pJaXNac3RsMkZl?=
 =?utf-8?B?U2RLa01vQUhWZHh3c0FJYnVJenNDNm52TzRzOXZZL2RmQjBzS2YrVGxaTHFY?=
 =?utf-8?B?TDRibjJzaEVpVGFkUHNaVUdOSVVpdmVnRkV4dnhYbE9mWjAyaEtjc0U3eHRv?=
 =?utf-8?B?MXlTc2NIV283aFFQbEVNY2ZwaS9CbkE5VzU0T0dpZmw4cFFTbHplU1VucER1?=
 =?utf-8?B?bXRZS2xuU1Z2N29KRkJVSVJpVitXUEFwd0JZc0U4aXpvdVd0V0hEOEhwcGs0?=
 =?utf-8?B?ZHJ6bm15S3VQTXQ0V3lZdjVTdlBMbG5GUVBRTFNtc3p0Zzg3QjRhRTNGZjI5?=
 =?utf-8?B?VGwzc25JaHlseVF3SFV1M2J5M2gwVTR6UXJWRTRaYlVmMURLL2h1aW83czNB?=
 =?utf-8?B?UmtERkowRzh6elgrY2FnM3FqbDJMMXRMTm5DcVpqc28xSVozM1pTajQ2d0E3?=
 =?utf-8?B?eFFKdU12UzVwSysrT0xLRmt4bWh3WExHeEFXUkU4Rlk3Wmgwd0YvQzR5TUh2?=
 =?utf-8?B?VEJYNFNpWlNBVFRET2p1Q0JvMmRnTjZaWFZ4aUFxSXpmclk5cytZK3pLbGFH?=
 =?utf-8?B?ejRGQmRHUlgyNit0Z3ZJOHRGNUh1MDBBZE82ckhGazRCNDZ4NmU0ZFJVeFB5?=
 =?utf-8?B?MTVyTE1rNkdKcnVPb3E1cFlaZ2lsdTJZMkxWdld6SWFiZVhCakY0T2hYWEY3?=
 =?utf-8?B?TU8xZzRLdjVITVlsYXNWQ1RjWVhxWnVxM0d4RTVjc2d4SXplTnRTTzVqV1pq?=
 =?utf-8?B?dG02a2E5bElkRFEwREFSZE40MTNkZTJDWHdTaWhXWEYwM2RxazNMek9hMmp2?=
 =?utf-8?B?Tjl4SWpkVmE5UTR4K3hyaXBNUnA1b3FsMkxqU1FLT0M4N21GeFBxazRjL0JJ?=
 =?utf-8?B?bUp2QmF0SGZZNVhrekIvVVVPbjBpMDVWWkFOY2JObmtLanZqWWljYnUxVk55?=
 =?utf-8?B?M0xHSnplL3ZITWZNMEIxN1ZDVVU4WkZxd3lFa2g0VlMvMVVHd1N5eCtGR1Bw?=
 =?utf-8?B?T1B1eVBMWTRjUHhzcHo3TU5KZlo4YjlTVkkwbm1ISEgxRjVrUkcvcVBUNW5a?=
 =?utf-8?B?THBESUF0YlpzMWpRd3NzTUxzZ3dNSWJ0OXZhYjd0VE84bXp0SjVFNkRCMFlP?=
 =?utf-8?B?UlJ2dHYrOGhUMkc2UkYyc2NaYkJqL25QTjlQU2tDWkFXM1oreC9JNE5IdmNZ?=
 =?utf-8?B?bjZ2dHo5RzZmVDM1Y2Rnb1liK1dSUURPbVQrSVVnZDRWT0hRbUtUUG15cllR?=
 =?utf-8?B?R0hGVHMzOFR3eTBBNGp3eVltVDdPaGNLdnVFd3NHbmJYUkRNRGNRelpnZzdL?=
 =?utf-8?B?OTF3ZWMybWpGblAzVzhkRzJBOFF5N0xlK3lPbDgrRWxQcm1MNHZldTgwdUZJ?=
 =?utf-8?B?aElFZ05SQTF1QTZVME8xUnFvem1ZMlE3NVUxRlRGeHZwNncxVEZoT3V6ZUZF?=
 =?utf-8?B?ekZuZURxQkx6U21PLzdyeG1GV2xjVDZDVnI2U1N3OUgxcml0eWp4TTFrUHMz?=
 =?utf-8?B?UW5kZE1NT2ltb1pnNjFHbTdMRkgrcmZzU3FsUGN2bEpCb0c2UDljQWxxZmla?=
 =?utf-8?B?T01Xc3FRZ3FHNUpUQisrV3ZNVFBkUTFpbVN0TGtsRWtaNlZJM3luTG9xQTFs?=
 =?utf-8?B?VGNZdVdlRHlrb2tCVDVhNkVXcW5ZNmllTUNGQTUwLzI5VDhZbHM5VVJRRkR6?=
 =?utf-8?B?cDlFRUhYcGhwakVwSUtnZHZ1K1ZDWExxeDJEbGl1Nkt3OFl3MldEUGZ4SjNl?=
 =?utf-8?B?WE1zZ00rUDFaSitzYURaZHZsNzdWRlhHdzBvSUxGWjBjdC8zNzZjMnZLWlY0?=
 =?utf-8?B?LzhOaTBrcEZFMjhINlFCVWVtSEpmTWd2dHp4OGMxZHZiV05vWkNWeXZZcTR3?=
 =?utf-8?B?USs5eUFHMjR2RHJmQlo1YWQ3aEhwc3lVcEFyKzBqVTJyKytlS1A3WUtSZWZD?=
 =?utf-8?B?aHc9PQ==?=
X-OriginatorOrg: meta.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da45a1e7-da22-4a87-0e5d-08daf8d72ed7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1501MB2064.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 22:07:11.5880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ew6Rpc5cWwBEq6U3RPEk7jdsKhLMxr+2vheU8owpvdILfeDj16FaUCdYfeyZw+/j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR15MB4178
X-Proofpoint-ORIG-GUID: ZVfEpwqPBgUgZwwsa6-nWLC1U9Ujxofe
X-Proofpoint-GUID: ZVfEpwqPBgUgZwwsa6-nWLC1U9Ujxofe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-17_10,2023-01-17_01,2022-06-22_01
X-Mailman-Approved-At: Tue, 17 Jan 2023 23:23:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meta.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s2048-2021-q4;
 bh=5qUzvDCShvh+OjV46wq7elVBlLXUAKUnCywa+adcegU=;
 b=OSeZq4Al0uvgyPoiGUw9qy16eM/8iRsb33N4JZdj4zI2TdC0+3D9+aNNcaHllw4XTDXP
 eIH3cxDQPaEr2syfuSXXJeYO675kMLBRIuNvRKWADwk4G4JdJwd44rQwqYv+i1lYFk/F
 PzcYHxEfCtKM7KRhWmHHvaY1jqSIcpD6BoLu/Daz0wmN6kTIheEMtWZQmQtsrJS/FvdY
 F+NL4/OQrTkwWrOnwyL/2kopS9TiTbyP5NZVfKXELjXQAPChauY1GiebO6oIcjTjn+iu
 5O2WoGpgjxaj9vSjblg9zOLyXCoU61zULVFoVPBs0CV/R6t0KiLRvXPU9QKqznAmCJIy qQ== 
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=meta.com header.i=@meta.com
 header.a=rsa-sha256 header.s=s2048-2021-q4 header.b=OSeZq4Al
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 3/7] xsk: add usage of XDP
 features flags
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/14/23 7:54 AM, Lorenzo Bianconi wrote:
> From: Marek Majtyka <alardam@gmail.com>
> 
> Change necessary condition check for XSK from ndo functions to
> xdp features flags.
> 
> Signed-off-by: Marek Majtyka <alardam@gmail.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   net/xdp/xsk_buff_pool.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
> index ed6c71826d31..2e6fa082142a 100644
> --- a/net/xdp/xsk_buff_pool.c
> +++ b/net/xdp/xsk_buff_pool.c
> @@ -178,8 +178,7 @@ int xp_assign_dev(struct xsk_buff_pool *pool,
>   		/* For copy-mode, we are done. */
>   		return 0;
>   
> -	if (!netdev->netdev_ops->ndo_bpf ||
> -	    !netdev->netdev_ops->ndo_xsk_wakeup) {
> +	if ((netdev->xdp_features & NETDEV_XDP_ACT_ZC) != NETDEV_XDP_ACT_ZC) {

Maybe:
	if (!(netdev->xdp_features & NETDEV_XDP_ACT_ZC))
?

>   		err = -EOPNOTSUPP;
>   		goto err_unreg_pool;
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
