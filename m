Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DB06D691A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 18:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4E468188B;
	Tue,  4 Apr 2023 16:42:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4E468188B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680626543;
	bh=pKo7BfKg0PD21YkZznT7J7Oo04LeQIjmJGmQmT1Abr8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k74aWW0XfiIqur7lQnkfpDTr4K3153UA6gHVKJ6pReu9B2/FCyibMnDQJiq1Z13mv
	 Ps2DCp1kdRaaBjf1qkGaOUHjpLbu/AOIEdk5EzbobSViDBBTNHaMWPTMDkYj4mhNGn
	 xJzkfXkJFPNLMMI7tnZ8kQz2uQ/ShtENhG+gk3ljTwPr5bWl2Qo+WkLdiqKzzJ0bQl
	 3iDuEfJf1qvivaXJ6zbd4sZIRf6zUxe4By+njvNdA6q3PmfjWhTR0131mN2M3iIZI3
	 xKGwZlrq2u/Zfs4lGPTsacxTqGClRUbNrhKe7d4t9ljMTCTofavs/iRgjQk5MRVAJQ
	 iCKYSbCTlWbWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lbp_axuK4epn; Tue,  4 Apr 2023 16:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C508E8177C;
	Tue,  4 Apr 2023 16:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C508E8177C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F38021C28CD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 16:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2E2440950
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 16:42:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2E2440950
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jM6xk_E3z7eD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 16:42:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 606894094E
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2048.outbound.protection.outlook.com [40.107.223.48])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 606894094E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 16:42:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F8kw9uswfylt4cit49dBhWhD0c1gv0Xky+FPDy7mv3B34zBurnCC7lgAnTe6auM2FU6bOnd2/1W11vOoCCtKWvfIuIaWIn3b/Cljln54mrAVA2RMeEpdrhZiOxiYoHQHT8RtSZcsSa5rtp8jacAyIW/zi+Ax/ZJHCRRMHPoIZgI1oX1xNhx7dvgSboQvoE+z2r87i+Bmf2uwHftmIjG1+fFBVkGeP3T5uc6RM0+citcpaqNLwlK6fv8LN2v/hZGcsZciq/e00/SSQWX69khZDhNXjoegOV9es6JnlmYgwesjMcKrc6lT/AC+DC8lbus58mC42fF+hU47o/fGIbnzKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D4a/u1k8IKiFFUOfsqtfdiW6qP+959NySs9I7NPGnfo=;
 b=MGLJr++ZX+bXzQAJRYYAQhZDAM3R+A4yqhh8+jQUVJnGieP8E4+AgxMKd4h5MubMluaz9FtyhKJKg/rwdAxK/yiXf79mV9zY3BZ2q3dtzxj9dVynpjqIiV8TMgz82Ap0gsZPXe9WnvqpIRWEl65zkI8bW5oBv8ekVDtJNtMWyqkXC7QXfELRXBa5DSV+wpINw0WvMdnzGvcmizOAt2LN7IEh4ez4OLd3YuR6vauLhs0mFnq4Y6/WGEl2CHDT3aJyQMHiqC2ALuC1OSUYcquLyVrP4OfMPL0lrMgQLTfCcVoO0UTs7VmBBXT5J4Aewl4JFZO7s+zOF63Ym1x5KL5YyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by BL1PR12MB5732.namprd12.prod.outlook.com (2603:10b6:208:387::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Tue, 4 Apr
 2023 16:42:14 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::6045:ad97:10b7:62a2]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::6045:ad97:10b7:62a2%6]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 16:42:14 +0000
Date: Tue, 4 Apr 2023 13:42:13 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <ZCxTZQJ59boMFJNZ@nvidia.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <ZCV6fZfuX5O8sRtA@nvidia.com> <20230330102505.6d3b88da@kernel.org>
 <ZCXVE9CuaMbY+Cdl@nvidia.com>
 <5d0439a6-8339-5bbd-c782-123a1aad71ed@intel.com>
Content-Disposition: inline
In-Reply-To: <5d0439a6-8339-5bbd-c782-123a1aad71ed@intel.com>
X-ClientProxiedBy: BLAPR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:208:32b::18) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|BL1PR12MB5732:EE_
X-MS-Office365-Filtering-Correlation-Id: 79d31c65-024d-47f0-46f4-08db352b8b95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZmG+1q3EgcBJ/jZmOeKNe6Yd/+wuSdYO0D/bpRYJECHK8eqIRI+cZzAIjgS0OCLqsXBy9tRFsci1LMpafTkzMsG8EdC5Gj9HPZb77nOUfkLiH1pF5r5NXnI8xbFSJaoW6fIa8hibpLMgYjfdK/p7DRRGweN/7IP5NhEXmerR/xjePlurkRJPJ/PVpBBqc4xF3Ug8RO9SV+BG8+Bo9jRrORsjE5eitJus/GgDhRbtZ0x5ub4b2QEzQIEcaPFFr2jud1ISu4l47m6Hsviq0/zLaNbiv22h8kt4wUDBdbDyteit3KbXjBVb7PXIAlz7i+2vy6Q21DOXtIPG1ko/hJQwkfmHvyCS2sILiLKNmIcZ+vWTqkFvI8by9gn7C552Zi2J1jpgUnjbwpKpOUaMqK8Gx7xKwqe7g63UTKUsHnfQSz4Pj0xZqQrXzsEMFfhZeof6i57u8eFLtLWD8QrQd0orK4km/h+Jg0UnbR2pE3rMoKGFYRrXYLQWGsIGcLVf0euDhEwcdVCvpr4Ur6gwkxtYrsx/+fnZfd7tl7gj3wiYw4u3gJyvQQ6/nMdi9ikylKYI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(6512007)(26005)(6506007)(186003)(86362001)(478600001)(54906003)(316002)(6486002)(5660300002)(36756003)(8936002)(7416002)(2906002)(66556008)(66946007)(4326008)(66476007)(8676002)(6916009)(38100700002)(41300700001)(2616005)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajZQSENqTlVaN0JtMkZtKzVUWDZmQURyTnZVQy85ODhBQUxENEI1U2s4blRT?=
 =?utf-8?B?alRYaTAvYUhZOGo3KzNIQ0xIZllCTnBpSElQL2NDblBnMkVxNzBvK1l5YlAr?=
 =?utf-8?B?R2s0U2pMcGNTS2xhcFF0R1NXK2pSRXNaak1VMkg0aE9neTBjVGllYVJ1aE5Q?=
 =?utf-8?B?VXFIMjZBRXhGUkZzVStYWUJDVnFtZ24xR2VPM3poNVNrMmE3aGJJbzlTOURu?=
 =?utf-8?B?LzhBYm91NHkrdjFodmNyblJmOXRINmRZcGpZRkpiL3pkSmRxL2ZzRzhsMHRx?=
 =?utf-8?B?Ny9GaU1rTWQxWGx5aTQwdXNHaXEzcUZ0dlVEaW9EeHpZZXpBUDdxK0R1OXZt?=
 =?utf-8?B?SkQ5VUNnVXNLK096U0ZXdklsam1mYUcxeDVhVjhUMG5nai81SkRDbnVlZTFF?=
 =?utf-8?B?SmNISGp5S2FPTzNGci9Ud0JDL1R5RGw4Wk5SREZnRE5TZ3FuSnpVRGt3aisz?=
 =?utf-8?B?V2t0SWI5YzJJYVdWVGxlK3VLYkdZQTg0UnpvcWxsUzRCWHUyUDZVdnB0TmR6?=
 =?utf-8?B?SEdGNm9yRUNNaGl0V25PZjR2S2NKSFp3SkxpT0RwdXlkRm9Uc0hrTldSUUlo?=
 =?utf-8?B?UjdBa3BLRVZLbXJaa2lDSEVPNWNHV1Fpc1MzZVVzdXRKeEVCYTN3QWZlaHhH?=
 =?utf-8?B?cW5qZVcrODFhSGdKYmJxRFVVTUlDaW5QT0xxa3FMQUloUnoxZ0xNQ0VSd3d1?=
 =?utf-8?B?YmNPb2g2L0J2Vm5acHFwcTkrZ3ZpczFpaFRWUjBCZzNFcVRSTlZRdVErc0Za?=
 =?utf-8?B?d29KbzJQbmRPTktremZPMnpudStIQU5TNXNXakxKVXkwOE11aUsyRVZuUENr?=
 =?utf-8?B?M1M0YmEwVG9LcHRXdkhRVGl1OFgwcHo0clhpNFZIVldvcFhMUThKZjBPVHpX?=
 =?utf-8?B?bnFGd1lCbGt3TWtQbGVUeWZOaW5COFRVTGhaZVd5RVZlaHBBejBwV3ZNRTEx?=
 =?utf-8?B?Rys4RFhYdTBGd2t0UWxMMTdRMVA2SVN4cEh1bHVscE9kVUZDMTY2aXdBUGVu?=
 =?utf-8?B?dDZxWVNLNTdVUmhUdXJpNHp3eXc1a2t2cklFWE1ndDJWVnZwcERmZmpramU4?=
 =?utf-8?B?ZzlBMWZKUjhsM3NnUVBwak5ueHZseXA1TmFTdzEwK0wvYitBa0JHTWs3SG5u?=
 =?utf-8?B?QTVsdUVXbGlLQWtWU0x5TjA5WkpwYzVCZVdEcFQxOWxZTjBqOWZHNFlPdWg1?=
 =?utf-8?B?VGxOOXhoUkVkR0xYRUh5cm84QTFHbkQ3ZlFpVXI5V2dSekh0SUt6c3o4ZURj?=
 =?utf-8?B?UUFjbzhtRFg3eUxrMUQ3eWZybnYwOElnMzZ0eFJocDk3UzJGaEpZSVQzSEk3?=
 =?utf-8?B?TWFaQjBvbVhnc2JwR1RFNTh5d3NJNnlSWFhwSlZadEQ0SnV3dzM4b2RMK3F0?=
 =?utf-8?B?UmRscCtuS1NUcEsyU2s0NzNDMXI5bWlUZ1NIN2ZmNnE4bm1VY3ZnbkExRFdZ?=
 =?utf-8?B?ckhLSTREWkc4NDd4Nkc4amlwNklvOXIyT0g2ZXEycy83ejdnZkhCdzlYNzhM?=
 =?utf-8?B?STRHRHc1R3lBWmxGc1NnMmlHbWRFRm9Ec3NENWFnb3dJZXhRTnpGNG9OUENn?=
 =?utf-8?B?SnMvcVRaTUVCdlV2OVl6S3E5VDlGM0lBWEpUYnoxd1UyS3Bqd0lscStiejZs?=
 =?utf-8?B?REh1MXgwYTZiNENsbGErdnZuTkM1dEVXWWJKdWtpKzBJVklvMUk3Vmk0dnNl?=
 =?utf-8?B?QjZLL0VKYkNQbFJLSnRRRmVNMjBlM3lFZXNYK3c5akpnV3VmYXRZWkEvSy9Q?=
 =?utf-8?B?VnJ6TVBhdTM0TkdweWRpaWdNd25CcTFaWmVaVHkyU3Yzc2dlbnRFakFnY011?=
 =?utf-8?B?YTV6N29xUWE4VEJXZk1obFhuRmxiR3hCOTFVRzBaRjR1ZWF0RktHd2lWTlJx?=
 =?utf-8?B?L0ZubjZtSzIyVHU4S1V0UjFCYS9FbnhlYk93SHRLRHlodGNkdEN4cXZ4N0VE?=
 =?utf-8?B?a0U5Nm8rdTlBSk1sUlN2cU5kZlYrcEpIZmdRUFdlaVE4aTg1OVc3RU5nN1JV?=
 =?utf-8?B?Q2RsOTdGbWIxVTJiVXZaaVhZTG5VWTVTT1JEMXFheGhWQmF0ZmxwZlMzREJl?=
 =?utf-8?B?bHRFVVgvU3JLZmQ5Sjl1bTFEWmNmNC81S1B2NWIvbkQxb01sR2xzbEtoRzk1?=
 =?utf-8?Q?jMDdjg/gUBb96OP23JsZGP2/5?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d31c65-024d-47f0-46f4-08db352b8b95
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 16:42:14.5969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZFNiZoi6EtupUM2W0Ifaz5iKVnFTjDShVfOnjVA0o/M5+YYe2excRaxAI641Qo3c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5732
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4a/u1k8IKiFFUOfsqtfdiW6qP+959NySs9I7NPGnfo=;
 b=d7DwBvqkPpugVCSPoqcciMnu3OlJ/psxotHhPJ/JrK/yK/9vosQ1dWs+B2cCEcYGkY5CxknCyaqdzfxIpGHUMMfsuZIktJox1GWE2BbOp8h1ffP2nry7yqci/4skpycthfYVOhFly/tZbnL38o/mo26FgCxjRyS+WwGrsXwgRCSEBQD0LW0IJaMu0Bzz0MHcuXLgzSofFDIZgTUZT6O9BvwZ/R56UYqCwHMon7RR0h/IkOS5BazCfDx20ZrcQUKd902PB88u57smeHTHPRy56MOIOgXFHAjoKxREpAzA38bJD8ZTnIhxRuDCaPErSszJnP4zW26/vhRjKKI1tydIXA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=d7DwBvqk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: willemb@google.com, netdev@vger.kernel.org, michael.orr@intel.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 decot@google.com, shiraz.saleem@intel.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBBcHIgMDMsIDIwMjMgYXQgMDQ6MzY6NTZQTSAtMDUwMCwgU2FtdWRyYWxhLCBTcmlk
aGFyIHdyb3RlOgoKPiA+IEZ1cnRoZXIgT0FTSVMgaGFzIGEgbGVnYWwgSVBSIHBvbGljeSB0aGF0
IGJhc2ljYWxseSBtZWFucyBJbnRlbCBuZWVkcwo+ID4gdG8gcHVibGljbHkganVzdGlmeSB0aGF0
IHRoZWlyIFNpZ25lZC1vZmYtYnkgaXMgY29uc2lzZW50IHdpdGggdGhlCj4gPiBrZXJuZWwgcnVs
ZXMgb2YgdGhlIERDTy4gaWUgdGhhdCB0aGV5IGhhdmUgYSBsZWdhbCByaWdodCB0byBzdWJtaXQK
PiA+IHRoaXMgSVAgdG8gdGhlIGtlcm5lbC4KPiAKPiBPQVNJUyBkb2VzIE5PVCBoYXZlIHN1Y2gg
YSBsZWdhbCBJUFIgcG9saWN5LiBUaGUgb25seSBJUFIgcG9saWN5IHRoYXQKPiBhcHBsaWVzIHRv
IHRoZSBJRFBGIFRDIG1lbWJlcnMgaXMgdGhlIOKAnE5vbi1hc3NlcnTigJ0gSVBSIHBvbGljeSBh
cyBzdGF0ZWQKPiBpbiB0aGUgQ2hhcnRlci4KCk5vbi1hc3NlcnQgaXMgcmVsZXZhbnQgdG8gaW5j
bHVzaW9uIGluIExpbnV4IGFuZCBpcyBwYXJ0IG9mIHdoYXQgdGhlCkRDTyBjb25zaWRlcnMuIEFj
Y29yZGluZyB0byB0aGUgT0FTSVMgSVBSIG5vbi1hc3NlcnQgZG9lc24ndAphdXRvbWF0aWNhbGx5
IHRyaWdnZXIganVzdCBiZWNhdXNlIGluZm9ybWF0aW9uIGhhcyBiZWVuIHNoYXJlZCB3aXRoaW4K
YSBUQy4KCkFzIHRoZSBzdWJtaXR0ZXIgeW91IG5lZWQgdG8gZXhwbGFpbiB0aGF0IGFsbCBJUCBh
bmQgbGljZW5zZSBpc3N1ZXMKYXJlIGFjY291bnRlZCBmb3IgYmVjYXVzZSAqaW4gZ2VuZXJhbCog
dGFraW5nIHdvcmstaW4tcHJvZ3Jlc3Mgb3V0IG9mCmEgaW5kdXN0cnkgd29ya2dyb3VwIHdpdGgg
YW4gSVBSIGlzIGEgcHJvYmxlbWF0aWMgdGhpbmcgdG8gaW5jbHVkZSBpbgpMaW51eC4KCmVnIHlv
dSBjYW4gc2F5IHRoYXQgdGhlIDAuOSBkb2N1bWVudCB0aGlzIHNlcmllcyBsaW5rZWQgdG8gaGFz
CnByb3Blcmx5IHJlYWNoZWQgIk9BU0lTIFN0YW5kYXJkcyBEcmFmdCBEZWxpdmVyYWJsZSIgYW5k
IGlzIHRodXMKY292ZXJlZCBieSB0aGUgSVBSLCBvciB5b3UgY2FuIGV4cGxhaW4gdGhhdCBhbGwg
SW50ZWwgaGFzIGNvbmZpcm1lZApvdXRzaWRlIE9BU0lTIHRoYXQgYWxsIHBhcnRpZXMgdGhhdCBj
b250cmlidWVkIHRvIHRoZSBkb2N1bWVudCBjbGVhcgp0aGUgSVAgcmVsZWFzZSwgb3IgcGVyaGFw
cyBldmVuIHRoYXQgSW50ZWwgaXMgdGhlIG9ubHkgSVAgb3duZXIuCgpUaGlzIGFibm9ybWFsIHRo
aW5nIGp1c3QgbmVlZHMgdG8gYmUgZXhwbGFpbmVkLCBtYWludGFpbmVyJ3MgY2FuJ3QgYmUKbGVm
dCB0byBndWVzcyBpZiBJUCBpc3N1ZXMgYXJlIGNvcnJlY3QuCgpKYXNvbgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
