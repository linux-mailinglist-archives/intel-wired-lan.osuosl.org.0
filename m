Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91E66B0BAB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 15:43:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B72C40C95;
	Wed,  8 Mar 2023 14:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B72C40C95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678286581;
	bh=k8ZScuV826koTDdWCPYacJefO8lOSnSsblJvJZahC0s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fkSGLUreXeBWqJ1JTCI4ZLzXPv82h9gjPhF1keWzCtwPPqtmiswT1pVuDpQNOCbo5
	 7BqyI2I42kzQm9ednEpSzL0RSvypbcqE2dNOKRXVn6BrrtC36oVV/U1xrLfZLypodb
	 1spgzaTI08LeMdjBYwcjcAHuvoaUkQkDVLY0surwLnNZYLLStgfvZPO99rRGp4kR4I
	 mw1yYlrN9mJvTNx2/h+Y4YV3N/VfmeC6PbxgUaqLHDI6iH2OHD7m1VOQ2Ag6UWwZ7S
	 vEtS3y5/UkVLsZr+4irfyJ631ly3jcBJ9X/Lnjsr4qR1MKlh0FDU3q4ixGqvfQDekO
	 PPqOHRUlqQCDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DFITBilKobps; Wed,  8 Mar 2023 14:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B28A40297;
	Wed,  8 Mar 2023 14:43:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B28A40297
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85AEE1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F57580EC2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F57580EC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9VJ7yIZ7dmz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 14:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC71F80EBB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC71F80EBB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422436974"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422436974"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 06:42:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="851109541"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="851109541"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 08 Mar 2023 06:42:47 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 06:42:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dx7Y8L7U3v2HElETOzezp3fXAqCg88RZQb8ZYqvqmKiKGGc3f9we+heVg66fk5uaNRp7WEEYUDiNc8SHi+Jtt/acgRBvrmBPpg/+rsYWo04P2H80x1xbmYpOWnrwe3zW+6ZM/jfgOX6msNCOE/ErcCKxkRQpcHiyEvxBYsW9W0qvAEQNPDukUIn7mUhVSaA/XApCIuRzvJlNyOoRhcldy7qxt0Pmf868ec0lGCchzvw9VVOuSpb34p0xijkfpKyGGZ4FcVASpCIQ2S6Dslwg3NnIQM2+dbGLOMB2oXETez7ZL3U9bIoHV+devfsL8uXPe2c5mS5xGZHjIXZrgnMTUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nUDPq/nkFbVhLmTSuMGf72hcj23IigmbPMx/VVkfSI4=;
 b=ciUrkirZeUZC26XPh8jBbP/OVPJTgJUNJvsneEThsrQv4328oyaV6lsP79WOXNh9cG2Pg5zLwQqagXGiVlExhY3cn1gEAvVU+9scnf/+gDRfGwkdYX4S8rNP8XlkL++SXqGq2n8AOAXvG8yTJT9mFnc8LGTnjaJX3AuGgRj/Ls5ZCyNW/E0X34UBYWEFOIlm5UMkbbZR+8KuOWJVmubk1W5Tzn+zmU5SX4514IEb80Tq6B88zAUH/hZTHmSVdjoZwAQPZNZIMbN2T9juRVXqA24RNRwtp6q9NmTjjErzDo4T2Rtc8mN5sqJmjHEGQGauPsjnAMB19OrUW2xkaYSWnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 14:42:30 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6156.028; Wed, 8 Mar 2023
 14:42:30 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] igbvf: Regard vf reset nack as
 success
Thread-Index: AQHZBW6RGFBFlNJBW0GSuBfrSOrSDa5dmg+AgJONdZA=
Date: Wed, 8 Mar 2023 14:42:30 +0000
Message-ID: <CY8PR11MB736493C513065E46DE34F97FE6B49@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221201102003.67861-1-akihiko.odaki@daynix.com>
 <Y4yCkQh6F/qtsAct@unreal>
In-Reply-To: <Y4yCkQh6F/qtsAct@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM6PR11MB4722:EE_
x-ms-office365-filtering-correlation-id: 9dd3f8ba-90a4-4261-7e17-08db1fe35830
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kNrd5u1wMplPMJzU9RrGYbpfmXdmpRQN39jd9EgsYB/3iDQjKQYmNh86lXeLg3fbrF8+PKDLSzWVdzSPicYV6giUtVXeCRDCLacxOBoiReG/lX186GkpqQhGChiJUetOfBhyNRnx/Nw3HjofNpuaxCZ0FnUdjf6U3xcSLpJ5xIbzUbKLrXsmfrJ0KmNzmE/lk61jVHJG9L0JyLO/PrIpWAkiJJXVFTI5NWt+1C8/X5l/fSyOk4cjwiFSHXSfL49fb4RMqYOVyyTssoXVW5m4fxRmB5mxRxlig+S3/qlOomvG+DM3jSUMGC2clvnN2sKXX39+K64oTsY+mQPXIZ7lxNr+9AmjY5BXqrAWZMCDIBsG5wDySGR0gbSMu/G8yJyw5HcBd9qlTLGEFPpwyPMb7mt+cmTaw4bDLsXPE37cJRPOgv+Tudz+5ZuP5kY4pA8T7d0xvDBwV8noLuQueuxEOqsfpZs8opICaSdStL6RhIhjntO8WBzgikL9W9h5UKoGxeKRJl/x6YVkLNQDdH8dp3QpDG+gZLw47t0aVtb/darb01pfAC+GNM1QQfGgLqlv2cVB0/xDmEry1hFS5+1K0T+SDBxb9OyuF3c2lhMpzmjKWQgjQjsRwjEBv87RAEFOaGYTEeZ0AMFVnQI8/7JXPeWCXUkX828Msd5lJQH8L31oKZN/kuRbazJmm04Hop9KCo87sBoo1eqgxeezLo/kXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199018)(2906002)(38100700002)(186003)(82960400001)(9686003)(122000001)(55016003)(4744005)(53546011)(6506007)(38070700005)(26005)(66446008)(64756008)(76116006)(66946007)(33656002)(66556008)(6916009)(478600001)(52536014)(5660300002)(66476007)(8676002)(8936002)(316002)(71200400001)(41300700001)(86362001)(83380400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VnYUOW9HMmpCguOGp1h0VPnh6YSHZpPKO4Hw5iyxCgnfjbbF2Y6XQEp95uQf?=
 =?us-ascii?Q?/Fs5NamQwu3N3s4PZAwGLMNnzO80Ia9jDVJpRtKdxTyLpmJcrMe3jKqvVoYq?=
 =?us-ascii?Q?G/rXZ0JiJ9PUs4o6qnGlUWjZig+FErgYmy1dxRccKvb46ZVidhAm3Dt0SIBs?=
 =?us-ascii?Q?84uim4hBtFebrdh5MbSDoitiMyN7NN1y9JUGYRg0dWY40AAO8fGTPWDCBnLB?=
 =?us-ascii?Q?LWT4uxM2b1ku6DU7I/oQ+AHnqeep0beyvhsAlxGE2XM/LWN0BnIxbrAN0nws?=
 =?us-ascii?Q?DqFwKOcq3vNCTEApm5D9NqJcAdrByB/5oFyM0Z84kh7beoX1DlpNavdGV7VR?=
 =?us-ascii?Q?fPQIZ21KKE/DqDcGZkeJe+BHXu9jnaK0sK3zhrvLuy7+hnF2quy+kl0U7+4f?=
 =?us-ascii?Q?Oo7Yu9KE0KG4K1OSiLQl1tbeget+mcCjr0TCavc/kUMaSFZ05f9337gAWD3a?=
 =?us-ascii?Q?eMe2kEkKW5qEW36NHgyXc7MQ4dPdNSSixKpyE9AfIn4NKhw2YLIsfETdAkgh?=
 =?us-ascii?Q?RV9rAxVYpRrCg23DAFDQNH9wDg6NLm+EwD8Qo0b+sX0FjuVulGMaMNIE+hLc?=
 =?us-ascii?Q?5KaWIGwkbmeOIbmO4D4Ij2zU+eLftJ4Wgc2SMNNu2txLjwxoyVUpwMvxPShn?=
 =?us-ascii?Q?sikrpW4E/xAUqjShYMKP8t38UK5Cv2cqkrgwTuf/DK/utQ/wqC48uGZr1Brv?=
 =?us-ascii?Q?lSdALhUjiDhtumy54kX+0VhMRWZ2shyNpCAdoHYQe8AYHXdvhCz0c3iiSM7e?=
 =?us-ascii?Q?NWw0m++HVPiK88a1ZozKsmZmVLz3I9/WWv2HkleZzjTS3CkBWrxEbO7Qyu5d?=
 =?us-ascii?Q?eapjrt90TvPUOXKuGx6tsteiT/+npveImcwQ301Y2yn8u8j6FRxZb+xBH8Gs?=
 =?us-ascii?Q?eajwdalIDF1+8EvC1yhMWGTQTVSSY629Pg+vCNnDtXyDjziBGYb1ogCMRN+Y?=
 =?us-ascii?Q?8PUmlzGJjmQfvolNMYGVX7K2PwLrmx2I9RG3iGU0sXdQRUaAbLHZjQqs7u0Z?=
 =?us-ascii?Q?32CMOdqeYIfDkYDym2IIgY+gg3eLtBP0SkV8opym0Wz9mS6gOJyM+O7ysCDY?=
 =?us-ascii?Q?PgjSVvRwWD2zxHso6XmmTOLrMRkk6j+iI1kBTIFqsoAeOlvimnEkvWGKUpxW?=
 =?us-ascii?Q?11D3eqTWdkSIBRzyD24MK9pvAvudGHHBqNTy1xQANUikhVjNRNBlpJabxUaj?=
 =?us-ascii?Q?vvQ+WhemtWvQuQZ8HTXzyMXK5q3dp1QI7KdEtEn1mgidyfV+fjtQT4tFRHeT?=
 =?us-ascii?Q?NwLKZgf7MY+HTt0ZP9M8zdKWPnnoE7SsksRZIQ9T+7pHrsxQ0fdKTw6x6ffs?=
 =?us-ascii?Q?ZgsN9kKc/Pou/SlgAW7c+N82b9TwkXyxWTRlPvefzq76MIhBky8YaefupqGU?=
 =?us-ascii?Q?IY6QjgauMSuQzKk8xM7ijdtwL9APIT7DwIc9kf2Nz1STHoZBP/BpbbboE4Br?=
 =?us-ascii?Q?AjgNvkeFWyvKoPok6eqU+Kvk84dGSu/BF6SsbhfrblIuGH0/hiVhoeLPAuQ0?=
 =?us-ascii?Q?XFqPXqTF1SPu0JCMGXpPKf95obKPEBlLLTadXwCU6tz0+H3+3DW8euB+QSYv?=
 =?us-ascii?Q?7wPZU3MY9PhVR+YJVRSCeV/LNaOKGGGso1p1J3ab?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dd3f8ba-90a4-4261-7e17-08db1fe35830
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2023 14:42:30.0511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9lKSqCqgMLMrzYVM9R79SNsdxBkbuPDHGYYV8HWbI6AKquWJXOfagjLcrt7NG8bOh0HOyD2W/kreNO6ai5KVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678286568; x=1709822568;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nUDPq/nkFbVhLmTSuMGf72hcj23IigmbPMx/VVkfSI4=;
 b=BXyd428HgdWBcTKD/lqCA1AGevC94mgQvRgLD5ZQQe4uaEO4ODj58tfU
 pLG3+VIXtP0PoXYnM3Ncemz2wnS3jbD98pnqGditHLkXQX3qQ8LZZ2tr8
 O/UdiklKDkJ4Pk9CBaMTLCPOnw/65fXq1jM6gQiQhqltxr739mRwl0Jc9
 yZso5Q5KJkn9JAQGKAUFiAfMAhaI/z0o6nHbOZ9kgu4lXWe8h4QsffPol
 MTwaZA29vQGRqROALoWl1WewjuIYvg0B9/01gjmxk0Adn5lX90/RPYZc7
 I90I1w0Pg47rIwXs71Wj8lC1BQIqUn08eXXN/enjdK4ZjVrIKjiagEQOX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BXyd428H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] igbvf: Regard vf reset nack as
 success
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Leon Romanovsky
> Sent: niedziela, 4 grudnia 2022 12:21
> To: Akihiko Odaki <akihiko.odaki@daynix.com>
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Yuri Benditovich <yuri.benditovich@daynix.com>;
> Eric Dumazet <edumazet@google.com>; intel-wired-lan@lists.osuosl.org;
> Yan Vugenfirer <yan@daynix.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S . Miller <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH net v4] igbvf: Regard vf reset nack as
> success
> 

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
