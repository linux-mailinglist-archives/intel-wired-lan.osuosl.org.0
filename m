Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CA87A8635
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 16:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C7C141834;
	Wed, 20 Sep 2023 14:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C7C141834
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695218956;
	bh=5EIf19u1aGcAcRreklJEQ+lpKY5qZgd8dNkwd7ktkbI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v8a3p0bPu9wnNu36N0Ah5lNbWoS9VV8Abby7qSPhxu5o9aqAM65y/na3b25/e9tUa
	 sW6qLtQ3vHgo4cXAC8PJjZtev7a9CaU3Prk3iZtlldyb6QE6LeVwsachPMtFHIBf8E
	 qMwITiZUjOrgC+4WTKXEc0AtX2tkQQlZK8PktaT8Zrje+MLn0C6uSyD/xvWPuKQI8p
	 dOP5Mbf/gtCogEcTWa6o8jwHSrApvChTqWDVuxx7mScXj1j8aM736jdZZssckzER/c
	 4QMpCNPj6ccTEGj8BY+1t0XOj8G9xpY7kwTCx/CJU+l9U8Ozj+D/4NWL08cnLMM/2K
	 V4N4Ls/vyq9sQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jN4558gbsiVl; Wed, 20 Sep 2023 14:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18A8E41822;
	Wed, 20 Sep 2023 14:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18A8E41822
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B7E91BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 14:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7257583AC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 14:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7257583AC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8J7_jPA6uYA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 14:09:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B23483883
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 14:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B23483883
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360488634"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="360488634"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 07:09:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="781704438"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="781704438"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 07:09:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 07:09:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 07:09:05 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 07:09:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HaDoWJLbcuXzuZ/d+qNP0J4Tnpk1hCQVQ97rrMiWgyIZXXnkyFSzV8ADRt7hpsDNic2TYNqSkulvCc0J82rhy1YqARXMqrXJXr3ecXVS2E9c5KpJiKw9XU+MF6vEn8tB73qbeNlSIvjKhYdWpu+/N6XoTXcy54803fMZoosOko9ejv4VsMjeGtprfHO++wIXFvlsA+4ORoR2FbQr/KCmB6C2zNe6rgvDF43Noefmg06l7CTcab/BIE+Sls+TAPgn8yiCU0O0KNDIOaCTNF/DZjY7IOHLhD7AAxtap1R6hfMMjSaz0V/TcOoP043TI4I/3DRQvLlahxWP7fFlejRokQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gOQsZPTmh5ae4IivsszklKzEsXDMwjGN32XBe5sLx4U=;
 b=Az7EBECfzchobuqzrOeOpckzS3nK7SIDJRGQbK3G9sSfxNqpNeX3qC2Yfp7gM0wXz8ZZlv13z3QXzT5BeuC6cBVfucudJU38OpKMB2np7zR8cV/Qn7ke0jT7/coVrA67yemtqH3IoKHmD79842qDmcxgs+ukVdvhTqTV6VuLDBzJgvnCdUoIHHIji3+uqsdNjlJs8DDSub+khludbJxSR+gnMmr4GrI41hu0cPGeB/IEqRZJ0SAzUxzM7a00atRaXoUSjVDhV3DM5xJCj8nawK9sBq1Ku4psOeUAcoFRWQvSPyJLXglrcN9F+eyZUtk7QE4caFAtUolPOL9JcxTziA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Wed, 20 Sep
 2023 14:09:00 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6792.026; Wed, 20 Sep 2023
 14:09:00 +0000
Message-ID: <3ad2807a-727e-cdac-482b-acde2405304d@intel.com>
Date: Wed, 20 Sep 2023 16:08:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230920115439.61172-1-mschmidt@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230920115439.61172-1-mschmidt@redhat.com>
X-ClientProxiedBy: FR0P281CA0247.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::16) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH0PR11MB5830:EE_
X-MS-Office365-Filtering-Correlation-Id: a64ee4cd-f4ff-4781-b059-08dbb9e32285
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ojIpTnCKxgVx6OugghM7LYNdrLchmZS9WttdICE0gRxNPJVs3qY6oinXMlh7nq12V+w4fYAQhO8wj3qELTT0pFnrMGjp1DRWX5oV+QD0qJCPdPDUqNoLczTclAeeuovZ1mcm965jDdSS505ZmTMKpimatAFce/QI5e48a1YTdSwdnGgu+s+zI/+knTAj+acd/DlYsnnwGYSy5x5NuCbeivYoDdS5ROtNxYdzBs+0yAcTiDSATQuY+Zm9nv1g+vrKDAoruzkOKdlcCpfHHV+rIuPMsErlHV2YpE2Fihwv1NANmM0xSdxUDVRr9KpACZ9BpvBypQnE+PUZozyAdnJj5c+7svl5n/eX1qAuIz/UYjEgJtQS8DEzqx9ZyHWd3uar4l3fZYPu+mqoXnpvUkemUPp4MchXuHcUZtR+owQiEPOPaTeFi28xxLvs5k+392POJkLBk6rfKyjQ2LV7GdLLzdm90Yk1iwBCcrz6Qgl7HNYq/BVdhqf+MRZhqPyxao2gliUXHkK7Cw1SPkDY5rRzjnEVSvRDf9PHqJG18x7tWasVwHOqbrlO9Ix8HdBV2f8y70vyOORdk4QRtCPvUxvMLuPnD9UtOOVQMrWZGCBOzu1dkra7G5zkX2XYehny4ODzTjOgk6U5VF2FNP5lE2qKZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(376002)(39860400002)(396003)(1800799009)(451199024)(186009)(2616005)(6486002)(6512007)(53546011)(6506007)(26005)(36756003)(82960400001)(38100700002)(31696002)(86362001)(83380400001)(5660300002)(478600001)(41300700001)(54906003)(66476007)(66946007)(66556008)(316002)(31686004)(8676002)(4326008)(8936002)(6666004)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alZVNHRaRFd3ZURJYmZuUEtvYWFrZFVUUWtXcExhdU83ai93Nkhua21TRk0z?=
 =?utf-8?B?cFk0T1F3UVJsZ3haNDh6UkEza25iTExTNldneVdqWHIyZkVoWW9iVkx1YUZv?=
 =?utf-8?B?ODQySUN2K0drVUg1UGNwc2VhWUs1b05td1U4TW5jSlhzVWdyT0NLOTl3UVRH?=
 =?utf-8?B?SVJYSHR5TjVMR2U0eXg5dzczejhMSDRWMXNJNUtsQzR0UEttQnd6a1Y2T0VT?=
 =?utf-8?B?T1BXVEFaT0xMdjM5alRRSGUrVG5yeTFHY1hsTXBjTWpSTmJ5d0x1ZHFVbU1i?=
 =?utf-8?B?NUNjYlVVeStTQkhwYlBDL2xjRlRCYnZDOS80cFd4aEhUUkNqeFlGZzRqbVVO?=
 =?utf-8?B?L29DTVhzVWo2OUkrRk10bEF5WXBlYVIyRkNMSjBPcVNhMElGYkNJaVlRSHE0?=
 =?utf-8?B?VFFVMzFFODBBdVM5RTJRamFzS1FGWlczemlmSE1OV1pWbldTWXlWbVN6ZzF4?=
 =?utf-8?B?UFFnN05JNWhIK3dqK3dtUEZhK00xMnlzNG4zaVU2UGtBVmlFRnhjZzkzQlkr?=
 =?utf-8?B?SGhFYWttMG44LzBLdmQwZ3pmVWZmVjh5NUMxbG9kVW9qa285RTFLQlprOWE1?=
 =?utf-8?B?am1yYWNlZzZuWlFhL3J3YzRHcG9Vb3ArRkMvS0VlellmT2JpOHF1SG4xdldD?=
 =?utf-8?B?YnlwTGdWWHM2SzlHb1dKZ0ZONFlPOFdDM0xhdUoyVjlCbGxKWnJsR3VncGZ6?=
 =?utf-8?B?WHhEWit6TzhROTZiL1JrSHRqS3J6S2hiYjVSN0F5WXRTUVVERjB3ZitlZjJ1?=
 =?utf-8?B?WnBOakRkZTNSMmdIamFjdzZKWU52NzM5cm1ydUJDMC9vOXdNQklwdkNGK1Uv?=
 =?utf-8?B?ZzNQRnlPRGQwblRtbGJZRGplMmhvYS85RW1mVGdXZm8zN2Vsd1ZWcHQ1Q1ov?=
 =?utf-8?B?dXRoWnBRb1hkL21Jd0JGWnlUNXFpS2wxdDRQam53dFRFUEpITjFQRlhUNDNP?=
 =?utf-8?B?RG1FYzlqMEpTT3RlOW5RTVBrLzhOSFpEaHFEMjZOeUpmN29TZElvcS9hYi9O?=
 =?utf-8?B?c3Q5dGhBZjY5cG1wWWZjSjdla1JTRmRRdGhUNzc1SEV6cFE2WWEzSWVGd3Bk?=
 =?utf-8?B?czNEcUNvWVNGRE4xSDViNWxPMkdIMVdDZ3F3MDV5dDVQcGhXYkFTVXU3djBD?=
 =?utf-8?B?U0pEcGJlaERUSks5MDF4a1kzT3FlTGtDbjk1blczTmJoZW0wdnZ0K2Z5MWZJ?=
 =?utf-8?B?VGVsQWJIVWUxUUo2d3dlK3dQd1lJampVVDNROFE2NlRtYlg2VDRUTVErNXRP?=
 =?utf-8?B?K3R1TEpTYk9CZ0xVWVg3UmEvNEQ4eVovVnpkY0QrNjdWNXZWZkFieGhNQTBl?=
 =?utf-8?B?bzllajRpRlJkQzJEY1dxd0RQUmowWG9KM3hnUCtveFdpN2VrRVVOWlFmTEtW?=
 =?utf-8?B?d3VWbEt2Sms1ZXNIS3RyeUZwWWVDNEFPaUZHUHpyeGZ0RTNLUWNZamliTFJr?=
 =?utf-8?B?UUJKK0NjeWdPUUY5OXF2bVBIOW94UnNZT0k4NlhTTFJweDVhYWdiaU81OHdz?=
 =?utf-8?B?b2ZZZkNBNDd5ZEZ1ek16eWF6YmRSczM4dTRpOGhBZm9YdUJIY3BTcUdVNlg3?=
 =?utf-8?B?ZDlXQ2JjcHFHWlZzSzlMVE95SE5EUVE5V2FFcjhpcmFvc0t2UTlDN3d3M2dS?=
 =?utf-8?B?NjZ1b3BseGtMNUN6VHJUWWhwbVM1VUI0UmxmL2VkYzNpeTh6anZQcFB0YW91?=
 =?utf-8?B?UEtLUXVSZnBXOFVEMENSb3pqZ3M4YTJOb2pTWmFHYS9BTSt3a0t6aDcwQzNT?=
 =?utf-8?B?RWJMUzJxVVh1UXhaclFENytDdW5LcTBEVW9tZmQwU2JYalljV0czR1NDWjVN?=
 =?utf-8?B?UU42VlJTbURHd285dnpRTnNaM2NRRGFkNnJXdGZZZjRYZFRkUUk3ekZENE56?=
 =?utf-8?B?SnRmWU5iamZwK2J5MFEvbXB6dFA4aW5XMHZTKzB6aGNWa0FEUFdPWVpZYUpX?=
 =?utf-8?B?eHlsaXZ5TXVlcDVsUE95ZncreGtPaXo5Q011SFc0cWFvTEVZZk1XVTdCaE5Z?=
 =?utf-8?B?SVBUSU5IMzZJY29xdDYzU0F3dHhJSXUwTGE3UUZ2MzFXeGlDa1NkSU4rK0Nn?=
 =?utf-8?B?UThWaHJoc2I4T0lTaHdaY2NkWnR1Vnc3bUlvamx5Qkcyd1ZWSG5WYzVqSTFt?=
 =?utf-8?B?dzdGc1kwdmNQQSs2SDlsbFJpbDd5QllvdlhDVGZ2NkdneXBNVk1sT3IwK0tt?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a64ee4cd-f4ff-4781-b059-08dbb9e32285
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 14:08:59.5210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q7tHtZgMQHDbYT0eWVUjex4o/IbX3musKQR0jLjRhBoajZSaD8kg8FMHW9qgOgya2CXg9MJufURkI6k9V+c/pKhmGExkPHdfru/5nwJ21Vk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695218947; x=1726754947;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QCojLHuZx6vfW7WKUYcXm4EAt2FEUyFVdZXrgUiFU50=;
 b=JmiAskx2mIS25rqz592vVNZw/WNqVVJJnxSK/sQLTvrILZYdKtk/E2Y4
 e2m57P3CVXtUIjRFQ4LNv2ZOHcy5vHTjr/p0OmDq9INE8XtC2BiVcp+ha
 Oy0nhm8QFrBklMaFtHCTiGSPxIOoaKGx2TO+blgcdyP4GzfGbDLPyxQeO
 j2OS6kkhYRAz3/JO6RuS/YqlCcNhyC3kkWg9YeYnVZSJe+LUOw1Kx1ayR
 n23AbZce4S47nyJegg6d9qH2VmxjKIvS3gC8aes5BvhnHsSy/DkBxYA5A
 hVIqwlyzh3YFPqhRfikw2L/L6bJ0AxEjAiOkdfEzHJHYGuDP5zuuiW10P
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JmiAskx2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: always add legacy 32byte
 RXDID in supported_rxdids
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
Cc: Michal Jaron <michalx.jaron@intel.com>, netdev@vger.kernel.org,
 Leyi Rong <leyi.rong@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Paolo Abeni <pabeni@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/20/23 13:54, Michal Schmidt wrote:
> When the PF and VF drivers both support flexible rx descriptors and have
> negotiated the VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC capability, the VF driver
> queries the PF for the list of supported descriptor formats
> (VIRTCHNL_OP_GET_SUPPORTED_RXDIDS). The PF driver is supposed to set the
> supported_rxdids bits that correspond to the descriptor formats the
> firmware implements. The legacy 32-byte rx desc format is always
> supported, even though it is not expressed in GLFLXP_RXDID_FLAGS.
> 
> The ice driver does not advertise the legacy 32-byte rx desc support,
> which leads to this failure to bring up the VF using the Intel
> out-of-tree iavf driver:
>   iavf 0000:41:01.0: PF does not list support for default Rx descriptor format
>   ...
>   iavf 0000:41:01.0: PF returned error -5 (VIRTCHNL_STATUS_ERR_PARAM) to our request 6
> 
> The in-tree iavf driver does not expose this bug, because it does not
> yet implement VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.
> 
> The ice driver must always set the ICE_RXDID_LEGACY_1 bit in
> supported_rxdids. The Intel out-of-tree ice driver and the ice driver in
> DPDK both do this.
> 
> I copied this piece of the code and the comment text from the Intel
> out-of-tree driver.
> 
> Fixes: e753df8fbca5 ("ice: Add support Flex RXD")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

We have tried to upstream that as part of some big series "recently",
with no luck so far, so thank for standalone submission!

> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index b03426ac932b..db97353efd06 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2617,12 +2617,14 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
>   		goto err;
>   	}
>   
> -	/* Read flexiflag registers to determine whether the
> -	 * corresponding RXDID is configured and supported or not.
> -	 * Since Legacy 16byte descriptor format is not supported,
> -	 * start from Legacy 32byte descriptor.
> +	/* RXDIDs supported by DDP package can be read from the register
> +	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
> +	 * is not listed in DDP package, add it in the bitmap manually.
> +	 * Legacy 16byte descriptor is not supported.
>   	 */
> -	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
> +	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
> +
> +	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
>   		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
>   		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
>   			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
