Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54625716A93
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 19:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E51B781D35;
	Tue, 30 May 2023 17:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E51B781D35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685466826;
	bh=ltl0FLj8htwzRBfPrJPm1Es9hKbAr9SCx/4a/5BWajM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qbpIU8j/H+V2wa8Onasbg8VvznpOl7v2tmsU547L1jhjH86sd6WCQ4PWTANkk4ogk
	 Rb64gWcfvEUqA4Mud/8AO1J2BSJLJECTgTU85qEyekz+cvwg9erEolnwlTuO2UJBzr
	 8ZIk372AYT9h3BaiR7q2kHCQ0M5X9MS+4D+mG/NkR3lBGqLb1IOOHKVPUygEZ6nTB/
	 KXW6vGcZhPcfxmUHdgLnjjpISmExMKUr5RTZmzFsIusZwXdH9Py1u/xM0/jTIIqoCh
	 FD1I1GbVf3vt86Zt+JdvfEQmb4jrkqEItitv6HL1XGMJCFj3vpzvvDV0wUghFlp6wf
	 xbYJraGj3bt2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iyrUbckh7WC6; Tue, 30 May 2023 17:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE49181BC6;
	Tue, 30 May 2023 17:13:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE49181BC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC5311BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB34840869
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:13:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB34840869
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXy4o-JXor7K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 17:13:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BCD64023F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BCD64023F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:13:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="354998105"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="354998105"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:13:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="830850709"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="830850709"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 30 May 2023 10:13:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 10:13:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 10:13:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 10:13:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 10:13:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqG/cPvQJ1Hb2BOMIszL8aatqcAQ7mobv0j6rEFY0GW0szfFdKi74jVZxYQX5Panl11u89Cp7h0l01Z5si17cD4EdUTip5uL4YlCMrdoVgk9bmstlEQ9NlLOwvDsJTWTZ6afoWWmAhxxKqZXfx5FZWtbhxHeSa400mVufKwiWaPvFlpqy7CHE1xe3nJkqG67aUPWLTAvA/UkqsfmRoydJPGp3p3lGpbRQMj230pMJ0UFI8QvIf40o8BLMv4YFLdLS8r7KNZiZEcEAn64YsiWxlDFhqc0xbU1xYEnQSSveKhS/PixRwqA/d9QT+wnKssY/Dl9ryqRDrHwMEmKfFa3pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yjaUXRKqAYkQ5FNGnwe0OQApafyj7RG1d422qPPgsdM=;
 b=OlPzdizF4QNO/VQqF3SIJqEFfIST18M2GhMj3oI+s5UkR9+bjCZozOJpGOdfC179HFcUjE1ibCjPqF9+t6X7o2pWuWoJmW9B+YEEU7MMVqcsmQsv8T309pazaGXm3zyUbHXByjhd9sU5egYlxjmEBiiCb8RnKRkkxhUFYWEZRtmcjmQitgqI1Yqa71X/loQnxlnE3GRERMfm049b26Qp4dXfApg+9pYqf8nIuWoyiz6Hi2sMZiXiFT2bFNec+wFxOF5EEINDF7QFd/cOHU2PBnNTWynNJdOuO9kyRExkjoQYDsj1En4eLZRoImOXMSGj/WFXJc3fpB/Z95cuIMHcnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 17:13:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab%5]) with mapi id 15.20.6455.020; Tue, 30 May 2023
 17:13:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: mschmidt <mschmidt@redhat.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/5] ice: schedule service
 task in IRQ thread_fn
Thread-Index: AQHZkCCLziKby1G/tUuCC4aLRCuzSq9xFFEAgAH+AEA=
Date: Tue, 30 May 2023 17:13:25 +0000
Message-ID: <CO1PR11MB50895680DF720EDE94021796D64B9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
 <20230526222158.2685796-3-jacob.e.keller@intel.com>
 <7444fd8e-5504-7a3f-8228-5aed28d486ed@redhat.com>
In-Reply-To: <7444fd8e-5504-7a3f-8228-5aed28d486ed@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SA0PR11MB4542:EE_
x-ms-office365-filtering-correlation-id: 44179859-709b-48d2-1e9e-08db61312df9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fs9WK8nULWAi+5Vp8S9GDqV6/w40oqG00OGnT3Lzw6CwuuZ0LfsMR5kpikS4Mxr8OkCv2rrr6ySEcnTmKOGbsiZ8Oz+jnO83pLFExk8ILKRnDVrrGqqDGnUEAU6IgKPxbZ69AbejuF3O9JJ6fITfTKvhkw+VS5ODjfVtNjTJGEhwPY5JJ7ia8/Fes7rlG4UzzfU5bQ8FuJ0gdX8Wj2Rle1ONHjBztG8mCMlAM5qyIK9VBXS8My5pjEroZpGLVW7t9jPgtJ93BLt8H7c1iYhXx4xUZYio9u0dTD1CJi1uIVhWjHS0c+AEfkGposdk3TAdGAHhN3Ek1eS748uM8bf+7mmTzDk0R3Dwu4gVFCccIMRfqL0gKiq4m4iewcBFE8iJxuctBrhvWK1eMZP4DIkWxuQy6DSO16fo57TJqkt/5esyfmKDfZLJ7UllMdzEaNmeqFmNhTKr7PRUFfXHmI1TSBlplde9+B0plqfiEj0CH1gLmnPBrmW8Uu0Jaz9m4JHUUQVmp5KivRJhOEPYalSvL74MARzYcgsEWr+yhlCTbSfYjJB/ZR6bs1WbSAv8DoHz/ahghTfsk+QoD8nowG0NkN1RGyjrC0B4+0w/Hfffl9CBeVCkWIY0lrYFAHWrKLEo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199021)(82960400001)(33656002)(478600001)(38100700002)(122000001)(110136005)(66946007)(71200400001)(64756008)(66446008)(66476007)(76116006)(66556008)(7696005)(41300700001)(8936002)(52536014)(8676002)(5660300002)(86362001)(107886003)(26005)(2906002)(53546011)(55016003)(6506007)(186003)(9686003)(83380400001)(38070700005)(4326008)(6636002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmFSNnZtcS9ZbDZ2WklKS1ZvVmErclQ2RlRLMDNERU5pTjFtTXNLQ0NlN3p5?=
 =?utf-8?B?U3NTbWhiTzNBSExuTGNxVjhIZUlzN3k2ZkQ5YzNVL2JxT3FzOTdqR0VYaTFv?=
 =?utf-8?B?ekVxempEK2g3OE5naDRUL3c3VGF2NTJKS0JPUGRHWC9SMGs2Z1k1Vnh6VXZi?=
 =?utf-8?B?eUw3NVU5MEM5SHArdFdmQjJTY0RKSnI1allkckJMVktPTHRXczZ5TTBVMjBF?=
 =?utf-8?B?cEFiRFg3T1hkVWY4MmJPbEtLTTk2S3VzZVJKT3N3b3dmQTdTb25yWnN0STJG?=
 =?utf-8?B?RlRKM2YzbnRPWTdkY0grSlJYR2pzN2JwcEw4ekpiSGdLeWlxM3hzUU8zanFi?=
 =?utf-8?B?VGk4TnZ6TEt6TEx2UWRIek41UUhuWnZYUnZhd3dKMXRhVE1xYTZMMVlxV0RQ?=
 =?utf-8?B?N1ZiRGxXYTZOTUl2UFFFQmJiTzFjVkswRlVCalNmWllGZFpvdWhDY3VVQlhy?=
 =?utf-8?B?UnRRVU9qWEp5VW11Tk1VTHB4S2JMV0hYRVBEQW5iNFRkOFV6UnFldFROUisy?=
 =?utf-8?B?NlZNU2JEbHlKcXdGMFVmcFZzTU85NWgvU25NcDNyWHRDMUg0RjZUR0dTQ1JF?=
 =?utf-8?B?cnJ6WlZIK2RpVTNCbEJCdjUwVHo1Y3IvN2hqZnpsWklIVnVTSVJWK0RxSkdn?=
 =?utf-8?B?UDMxclk1YkZTZUlVQkVwTHJvRzdGNnBtaE1VcGFIZFFNekx3UDZ4aWpDRVRB?=
 =?utf-8?B?SUlpaTJNQUdPUG0zNzJGSmNFRExNNEY0ZEdDTW93UGg0S3pIaTNSK0YwdkV4?=
 =?utf-8?B?QVhONWJHa1FCZmJXUThaSjdkakFMbFhHNmZieVpmajBtYUR4bW9EeFRZdmVB?=
 =?utf-8?B?SmNacDEwYjNTZzFrWHQ5and4SGkyaHlET1lzVlV3VU80U1dndXVuRFBVZUlx?=
 =?utf-8?B?ZFNlUjdPbng0Y2RrRFhwMWpFRjR6QnVJc05Ra0ZtaExTNG5KeEk1UGV5Nm9l?=
 =?utf-8?B?ZzZuZWcxcnZRSjhrVXBSNkpCZkptNUNGVzhKOTI5VWh3K1FXQTllcG9sMmN0?=
 =?utf-8?B?UkZYbVJhSmw4bEJucHIyMW9ESTFqMzQ0UExTQTdOY0xsVWxSUU0xOTIyK3BD?=
 =?utf-8?B?bXM5UjBtZEpMUEdRSis4b1VRR3dUbkY4SGNqOTlEYmVTTHlRcXpVeC92d3c1?=
 =?utf-8?B?elRlNkl5am5ITmVYZDRwN0lhZ1JpUGVZcjZDbXdaa1FlUkZ1b0RTMnZSN2hk?=
 =?utf-8?B?VGlVdUdUTHorenE2UytXZEpyNnhvS1NQZW5JMTdLNTk0Q0NkNU1LenFTeU8z?=
 =?utf-8?B?RWJkSkd2TmlPMGMxTGVpM2pQU0JXNXhQZGxFckh5NmcxSVpwckl2T2xkK2hp?=
 =?utf-8?B?Nk9WWlg5YklCOUxZbTNQMktXOFliekZrbmdqanRPSWVobWFOR2VXYW90NEMr?=
 =?utf-8?B?VGx0VXc5VEVGS2w5M2t6ME5CU3c1YU84Y1huWERmWVJRakppOTRrbEtTbGk4?=
 =?utf-8?B?aHdlVE1VRGdyRzlqbXJySVZMQ2kvcTJwTWI3QWl6MGRyVHZ6SFYvNjVsTVR2?=
 =?utf-8?B?U0RLaloxc2ZGdThmQWNNc0xMQkc1RGZzODJvMkYyZGRlTCtTVTkyR09FSG1o?=
 =?utf-8?B?bHBQTUtpb3Y3UnNHTm1GWS9rVzZOM0JsSTYxbWplUytvNHFwcHFTTGpqdFhJ?=
 =?utf-8?B?TmkxdHN0S2g3UUNmMjNJOVFCUzJxdDVaeTZLa05mOGN2Z1FhbWlhYnJrS3Nh?=
 =?utf-8?B?ckQ4OVdrVURjbXpIVC93cXBhaUZNN24zOWVHNjZRQ1ovbzh1aisrRGxsWXE1?=
 =?utf-8?B?bElLNW5OOEdIZXVqd1F6bFVZVnhMOTVGNkVuQ0dINGV3dzcxa1hxUlVTc2xp?=
 =?utf-8?B?V1pOcERJbUZOY1NRSXdNdTRNY25NS0gwOERtUnloZS9aY2FZOXg1RGZKa0U1?=
 =?utf-8?B?YXNEVHBLTmNqL25GYmZwRWxUOW91dVpFaEVPUWFoWS9Ia0xEYnNjZ05pRFdQ?=
 =?utf-8?B?blNmWVhRV2ptQXhLaERteHdDN0xlTlJ0K0tGbWd4d2FQcE03bEhXM2Z4ZWt5?=
 =?utf-8?B?aUtlNkhSNW15SHBrMExEMldaaEVDN29RWUlCdTBRcHBSbVZZWDVEMjlwVVRh?=
 =?utf-8?B?WnAzWnVsQXo1aHpnaHVCNzF1RVhlNzRwaldvTHYxQVpYbUlwOUpDakNwbmlo?=
 =?utf-8?Q?kFnqY3t5R0QM//eyuTdeRkllt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44179859-709b-48d2-1e9e-08db61312df9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 17:13:25.5304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Asy6quURUGmjcX2IqB8FRj1XaXwOA6nnuwsBk5HuIngrJaYEjeq+qWkZaDSBFRjJRU2FiEhQjmYfcaKkIpriOKh7psRxwMCVuolX2eI8uY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685466819; x=1717002819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yjaUXRKqAYkQ5FNGnwe0OQApafyj7RG1d422qPPgsdM=;
 b=U7bVM3dq1tukYHbpvt7Th0FydJjH647aah60+Vk5VTZwGRPFQrqsBvqS
 IHlx4IcUnClTNB936LwWc4VRHlZx2WQzoJ6ycN7w5OTmqPkwXy4wmWU9Y
 hatojiPb5W+JrV3GhXIjqD07qPr8BGdYZ4toW8qzx7egVbIm9jMLGrB+m
 K7nfzR2M/ikRZUDngikwkkulhJYILNrYjJNVdfJT1xwaU0F+h1FRU/Psi
 XKR1JXd1dQJUQnzGnTjRrkXd86nfQSq949PkTVy7FMMcmyGM+LoKx8d0j
 3X1eFsyPhv2dBCelNW7Ulj/g4V9joCx6mDrWl69iAIzWHfHqCRxCnp+FV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U7bVM3dq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/5] ice: schedule service
 task in IRQ thread_fn
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Monday, May 29, 2023 3:43 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/5] ice: schedule service task in
> IRQ thread_fn
> 
> Den 27.05.2023 kl. 00.21 skrev Jacob Keller:
> > From: Karol Kolacinski <karol.kolacinski@intel.com>
> >
> > If the kernel is configured with CONFIG_PREEMPT_RT, scheduling the service
> > task in interrupt context can result in a kernel panic. This is a result of
> > ice_service_task_schedule calling queue_work.
> 
> Is it really the case on current kernels that one cannot use queue_work
> in that context?
> The previous posting of this patch showed a stack trace from a
> 3.10-based vendor kernel. Has the crash been seen on anything recent?
> I think the workqueue code has been safe to use in atomic context on
> even on PREEMPT_RT since commit fe3bc8a988a4 ("Merge branch 'for-5.8' of
> git://git.kernel.org/pub/scm/linux/kernel/git/tj/wq").
> 
> That said, the patch looks OK to me. It makes the code cleaner. I object
> only to the description.
> 
> Michal
> 

Hmm... we had developed this fix some time ago for a customer who was on an older stable kernel that didn't have this fix. I wasn't aware of it, so I assumed it was still a problem when writing this message for upstream. I think I prefer the overall code design here especially since we're moving processing of external timestamps.

I'll re-write the commit message.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
