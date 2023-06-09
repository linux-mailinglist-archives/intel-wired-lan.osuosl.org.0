Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB4572A03D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 18:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 230DC40574;
	Fri,  9 Jun 2023 16:34:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 230DC40574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686328499;
	bh=SQhtv1s2uLtDGJ+2UY4m7BpCsb+vl0PNT3yre58pqz4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qqLXZ/Jgu38FMrOzibes1rO8p4uer5p21a/w0XTTfdHGX4NXPr+d46QPU299i3naX
	 hZPyFmf8KMt0qvahVWqW1TIUN4vIeuRazFtW2/k4rhzD3zSrix6i6OuUpZnDn0tSos
	 ZOraHIQMJuPgvM4w8HMX/VJrk7wGTILHlrZ+8CkjRknFtv+qk6bJZ7/Teq5VMvF4ze
	 7brWKDrnonakh8/O9HL7ugQkEjc2QgWHOSYWaLqCYRqObj/WyBig8DB1Zsk/Jao6D9
	 CTRs3L78Zi9Mzk6ewQWyD5nV8Mm+lCAaCdkcCNmBk45p5ydSrtr4AIvEAzcktGG3OV
	 q7t1jm+W/qG8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbQ3y1jZ06jw; Fri,  9 Jun 2023 16:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E12FA401D8;
	Fri,  9 Jun 2023 16:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E12FA401D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAEB41BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 16:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 990B260C33
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 16:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 990B260C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kxbkhnz6NVDD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 16:34:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA63C60C0E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA63C60C0E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 16:34:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="337272189"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="337272189"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 09:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="775557007"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="775557007"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 09 Jun 2023 09:34:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 09:34:51 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 09:34:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 09:34:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 09:34:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITfyGpKYOeYOrRTH40xta+wmT8OTVpcsoP32BnRfbWB3q+BHzEeo0+A26fpdW8P+yp4463sVlOOJJPwkn8RafYY46SM3o9M9o48ndWYhrEykzMUy6KJC+Np79H+fg9ZKj3zc7yxPvp5Wn+uwPQt0pWsyGrgUogVyvwc5/XVkTW9nEROLw7PLFLGvWjjzADVAgnbkyjQ4MTyVFM1MUqdRdbk08C5y6nKtLry1NcY2L7W41wF5HHoZsCYuz9MVCb8CP/xpz/veU+djRA0nR8ulYtQ/PtaVG4w6Al52fy5qUQa+ld1p1MK9EvshJ7kGtMEDhBQndA0kzG5V7KYiUdflKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XEdOjAWqZcAOkxfBIJs5r6z+mfgicidfCVdZe2LtJ3k=;
 b=M6OTMv1PO2TUkRWWsV7xxJyLvLi5+RPEN0Gt0RzwnZlHy0PV83fO7scRUsY6YD3Z5ywsH1741PsIUFB8NTST+JzFKJN2vypSB2zOlSJ0GN7YzDWyFgt5VaIgdbJUONT9fb/1lAaQLCcatdEG3HOZsFDag7gstMEgNjNfdRI6dHvycaHSW48rBdcHZHmqbhON7FRhZkCF0S4BZl+Zvv+UtoJ0lKAFole5jIjwTPqVAB3/4kFdlIaS+AqVmyYvoF8w0a224fxuI5yTON2zMvi9TYjhSrGKY58e1KR9WuB+bgvzmzxPmPaeL5xF1eGJPXtDyoUNPZ0tW1TXFJMWOOymjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by BL3PR11MB6363.namprd11.prod.outlook.com (2603:10b6:208:3b6::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Fri, 9 Jun
 2023 16:34:50 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 16:34:50 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [PATCH iwl-next v3 04/10] ice: implement lag netdev event handler
Thread-Index: AQHZmrlgZYaU0MqzjUi87Gf4voRjoa+Cqq7w
Date: Fri, 9 Jun 2023 16:34:50 +0000
Message-ID: <MW5PR11MB5811B6646C1096BE62B625CADD51A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-5-david.m.ertman@intel.com>
 <20230609100052.a6gmrzpzgayfnkx3@DEN-LT-70577>
In-Reply-To: <20230609100052.a6gmrzpzgayfnkx3@DEN-LT-70577>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|BL3PR11MB6363:EE_
x-ms-office365-filtering-correlation-id: ffb65a0f-51c9-4740-76be-08db6907724a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UKgJ0ADnCox/8XJXwjVetNJDa1xFWz49uHwSXc4RiqFDmJ2+90wNdzpryLRR46i2a/3HUcppbek2aYEVzDLDFd9H8bn1ZEaXT17BHnp6UPFPiikjCJLPzX2nZaGM8pFHs1LWfCUJE/Twvrga4FEDYjfrwR50gtPHZ1fxsEm3b0Qj7ZqsDC4bTGaTJF8WSgZ83Ro20Ud6nCKhtC2SDJ0B7twenajlvNEvxC/qVKnawjUFguY6mjy9MtDkJwiTHHoPq4OMjEN/b73tXnCAtCmZ602A/OOY1+IznPMrSKewLbgIa57GwYVBybhJSSWftGKZTMCZGJ/cBGFtnfxYsuO+TWQdqc54dkLaG3a2mgLoDCO+ZoLMbVgf4XEUqWk/ELSi/N5nScwWUtfdDLDuCRG2jrtrvk7DHbmDQDIR1BaOW8/zf2Onc4V4gJJLMKCPqNWPrfQ3we0GDRr3kADUHsstq0vKkRY2CqfPJMQQ43LnCjXY3rvJNMkcPvmOt66StIi01Q1iH9hexvJoMufQUfVdz4NQgBaK34hogw3Ffpwl17PhUAdTv2Iktl3GF7SQQu9VHJDBzRZhLnzdYgUDbICxOaTgZzFdTcRMOwk/HWn+0YqTES0Ki08YZ+0PhaprCWbS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199021)(6506007)(33656002)(55016003)(26005)(83380400001)(52536014)(9686003)(5660300002)(41300700001)(53546011)(186003)(8676002)(54906003)(8936002)(71200400001)(478600001)(66946007)(64756008)(4326008)(76116006)(66476007)(66556008)(66446008)(82960400001)(316002)(7696005)(122000001)(38100700002)(38070700005)(2906002)(6916009)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7JEQkg4HKjKAZjR+P8qUXDugPnN/odfdZmsoqbRwroSkhmTcFvbuiBajHj8g?=
 =?us-ascii?Q?j0jDNIk9CLKy+UH+G8glmnzSSj0e9uLIGXSQ7gd8mjVrNnSO+iy+VW7iRwZw?=
 =?us-ascii?Q?WjFSbN4kv8u7RcFDd2q9A6FlUGV4gj/IDZ0n4Eb9tOuUGyT1k/GDgYqWwT5C?=
 =?us-ascii?Q?aNe7yFZgtxAYd3HM34Bm0YKR2UIwSfXDfFXNv51qG8JiGSOUv5svrMJiyapO?=
 =?us-ascii?Q?slyMuqcyH3gfID+GR6rYsvbewnp/DP3S/KDKz/T930pmC00AEkxK9IfxSurB?=
 =?us-ascii?Q?LGa0kBZg96qAZcr5wvx8ahnsBH6Mrf2FLDEAC42jRtkuPCNtzbWIS9J82brg?=
 =?us-ascii?Q?QGluaAZkw6HX8tg6G7mWXo7KYQjXj3xugIJZYm2WR0/b2dSdm7Jk9cFJ09ZE?=
 =?us-ascii?Q?UEz012lEELLgx0BVQ3wo3Hunver0+ndFGbJjmEHAuEMCSDgzeiZEyOYCpuRn?=
 =?us-ascii?Q?/Bi8+AXZdGnFjeXm2xUHRSr5QU5HxE3PKo8BbHTiOeNmphlyBkuz7ncoWNYH?=
 =?us-ascii?Q?RxeqKhSJkucTkC8G+DFx2bAy+nHIqhjtRTERSQiY9Quod8j/jzAWiNMmy6/J?=
 =?us-ascii?Q?zQxP0yj53N1m2qII1VVnEjIUZtMWLL6atIV4y0xfdVApStpUhvOANT5iOI/b?=
 =?us-ascii?Q?/xikeh0SQIEgRRnlKLjPv5ZADs1pQAHG86oodjLb5HyvU+kNolSrwqQiT4xk?=
 =?us-ascii?Q?yM4cEEvTcSX0EdgpPjVzdsAKViw7m/lbhRLmBGRJZ1oSG9iCM1kjRs6OjqCI?=
 =?us-ascii?Q?QpV0FFIP9yX0TsRqeijC5qQ4dPoNMVkmhPG8ytW4goSqdvzsdM8BpfUbWcm4?=
 =?us-ascii?Q?/g6F0jnObPkCY1HpORVpcZOVgXUFwXBPM0ePaFSD5Zfn7pF9IW561k4VkbKv?=
 =?us-ascii?Q?txBTVjuu8ousXrKaku2oLyHZrelKV/yhQr8uWjJxquEazc1C1GiziYOLSqrb?=
 =?us-ascii?Q?gANKCuOfeP6XzBCLOEXon9qBTjTmFKPvlzTAg8RuOwiNBXFsf8+BfLmc3+TJ?=
 =?us-ascii?Q?PXmGCZ8SDXK2EJfK4uMQxYNUKf9dSqp+W4cI0vMaNIkCLekfsemk6tEUaFk1?=
 =?us-ascii?Q?NO9yaROgT6sPgE0qZvDo9wnuwDs1Sm9QnUUSaAOkkUA42LweIH1jgTnShgCk?=
 =?us-ascii?Q?4urO/j5E1spyfMkXulnpujBmJV6nIV1IW5vHqC2448PYImN5v1M936GTdAqY?=
 =?us-ascii?Q?ftMcWS8sgdPgCcvCWT3n6bcbsdGNfbF/cGtwh24rpvK9aSH2lFOi6Ggq+rYl?=
 =?us-ascii?Q?z43MbbyqArFXV4FNv9xUJS+i8P76xrhxzbW6dRCV3RD93wuj18zLyBYel3T0?=
 =?us-ascii?Q?O1ij26UGKvBNBRtSgnXtx1XWyeN/FiVH1xQRUOU7/kWvxg5MUBEeTPHnWpD3?=
 =?us-ascii?Q?VhFTvoHpw3cVlJBvCM/a08eemv9nnn9AnzrTvHSqOzCgidnGCQV1gV8EvaSh?=
 =?us-ascii?Q?qwI110c9OullUPXfO9akO++lTh2NJLvs6c/UbmOGCdGnDSMY4W4a6L4Yvr/p?=
 =?us-ascii?Q?5FGy8tJurWK/Kfa8E8W0EYf32YVonqLEW9SsI/pEOL+Z5WLuY9WAGxd1fQOQ?=
 =?us-ascii?Q?eABIAGKh866Ixul72/PRx+0TiPoF4DPW3V7jWC3U?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb65a0f-51c9-4740-76be-08db6907724a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 16:34:50.5845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D2Yt1ayrs7s2ID02ox81cUXsGJKN/vbaUc3YAaONXNAFKuOntdFSn4iVn5PPOPQvWoX0ZhK/rZuHWgJJUD9bJP+6OSxNYmXDZroh6YQIqTU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6363
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686328492; x=1717864492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FOo6OPR2W+ITmKq2B+gsr4BwEdLoFtMA8Zr9X7mcDng=;
 b=FKxl6D6z15a6dsZGxKjyG4kOFVp8WC5jWNKoDD9cKSjd8PqlO4v49jW7
 4qOC8I/D5lRfyI0Jt57ln35EEcuLdPtq0U1599bE5/Uf5/79QTz75KtXa
 NyoS58r3pXYUXi/n/QAreAr4tYT+2gIoKXLB/u7AR1Y9UV+/AdChWaa7+
 kLZXVAt8ED2zXw7KiAQP/T+sqfNKa8kOQ/tign0vDbKaFA03LT+XukvVw
 1ycuDUCzVYBEbK2GXfrHRIr8ezhBPdEICPQE9ER8ggcopoTwF8sgj7DcV
 seULEU99tBrfh+91FsPVC2gMTw1xzZSKjohDdRFjEF2azMJOyVRe1K85i
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FKxl6D6z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 04/10] ice: implement lag
 netdev event handler
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Daniel Machon <daniel.machon@microchip.com>
> Sent: Friday, June 9, 2023 3:01 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [PATCH iwl-next v3 04/10] ice: implement lag netdev event
> handler
> 
> Hi Dave,
> 
> This patch fails to build, as ice_lag_move_new_vf_nodes() is used in
> ice_vc_cfg_qs_msg(), but first defined in the next patch.

Thanks for catching that - I moved some code around and neglected to do a patch by
patch build test.  I have some refactoring to do for another feedback and will run the
test before I send out v4.

Thanks for the review!
DaveE

> 
> > The event handler for LAG will create a work item to place on the ordered
> > workqueue to be processed.
> >
> > Add in defines for training packets and new recipes to be used by the
> > switching block of the HW for LAG packet steering.
> >
> > Update the ice_lag struct to reflect the new processing methodology.
> >
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lag.c      | 125 ++++++++++++++++--
> >  drivers/net/ethernet/intel/ice/ice_lag.h      |  31 ++++-
> >  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
> >  3 files changed, 144 insertions(+), 14 deletions(-)
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
