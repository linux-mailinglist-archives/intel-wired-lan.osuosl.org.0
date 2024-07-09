Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1623792B121
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 09:33:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B141140E82;
	Tue,  9 Jul 2024 07:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t7rehei2IVLn; Tue,  9 Jul 2024 07:33:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEF5640E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720510380;
	bh=j33oWF+7gH/p9tH1hh0P1KANtZh7d9EOVqaUcQTLOFA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hj3qWha8QkTsKxVToAvb4lOu40OMk1O5+tTSwIV49KhVtPdlLUJcUjMdY28vJK/aI
	 XfiSBouOglJrgHMpfnSmEPheA66HIgmVsqCIOKJRxQ50OnOBphYD0IqH3E0eZB9lt8
	 Meqp0X+Re7hT0scs/u07X72zt7Cf0ryUTommgEO8q9b4Y+xKXv0KSTf0jbEZ8ZQ5sZ
	 xRVoa3uNogiNgcgTyhb8qCbTIQlYOvEWd/dczPQz5JGQpijPHMkGEK5XtzA3DgsHLJ
	 6hC6ZNhRVezgZeaoOZ1KSjEaKcLpw7o2CskmmXRgRb3VZFUtqLy6O33UcgTv+c7mS0
	 8K2HqRlnd+I/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEF5640E72;
	Tue,  9 Jul 2024 07:32:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 042EA1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2CDA40B88
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:32:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hclMvmocm16T for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 07:32:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BC06440646
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC06440646
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC06440646
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:32:56 +0000 (UTC)
X-CSE-ConnectionGUID: rrMrwVzgTLyK2MoN3x4rug==
X-CSE-MsgGUID: RZ2CDfFhS/W8nIJvCp5YeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21511033"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="21511033"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 00:32:53 -0700
X-CSE-ConnectionGUID: 6XOda9bMSw2Xh89OtmqT9A==
X-CSE-MsgGUID: QR00yFxPSJWzSu9PPvMR0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="52365799"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 00:32:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:32:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 00:32:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 00:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjYm2SDFIB8t6uAAnA2wySMIsoXxKJhgZFsBTQcuoAAPwXtS+qFUvcKCy7FhzptadH1WwOqmNjghW0ZKwF1A93H05WED5vH2QBAbJ8Aejbc46o+/1UMcdcKtj9TalyoFLR/Ay6HbOWJZ3DAeZdbYmVH2+o2q6UlXMHsC7wRyAUQUkWSPRC3FrLgpnZd0RRU8SC320x/ceLhwVMS5XxMpLPz3Pq0x2VHfx7Nt0eV5EmSX1EwAiENN64yNKv+r/uNo9Cjfy9yduTBhrERjz/1tetP8UVQwbPYEh+maR5WwTH3YDH1s3afCXlrKqZn5+va+Wv2bkhco0EhXYtaz9ecucw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j33oWF+7gH/p9tH1hh0P1KANtZh7d9EOVqaUcQTLOFA=;
 b=hax37C50/+/lwrdtO3gMTQgUyavwLH+cVHUXAtHtgL3LnR5vG0LKq0TY2SEFv9WBnJOVdl7vfZK9S/qm4IqTOtOYnE3Yxg7G4bX6wTnM25DqlJZj0CdQAEiwc+tFZFsQlJ6M2foaV77Ucusmoe/LOGvpdZyFUOlafb2k/eq3OE2c5PdHfSJtfOco/zCfQLVhrhI6BCsvF3sAjR26u1/v40AcgPMM2IiHv6Qmh5UIkZek4r8x0mULX3ZG7kUV7qrMA+nPD6JKBP3+vf1rXcuk7gwyYeIENK+8eaauPEXDjQwRK+u1EyzBXQ4CiZGmbOkpNYl5Zr7dR21MOCs+Biu6tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Tue, 9 Jul
 2024 07:32:49 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 07:32:49 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 4/7] ice: remove unused
 recipe bookkeeping data
Thread-Index: AQHayKIN/d2/jw1n2kWzw0xZYRwxh7HuEwUA
Date: Tue, 9 Jul 2024 07:32:49 +0000
Message-ID: <PH0PR11MB5013D5290F3497AF7BB805E796DB2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
 <20240627145547.32621-5-marcin.szycik@linux.intel.com>
In-Reply-To: <20240627145547.32621-5-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7108:EE_
x-ms-office365-filtering-correlation-id: af55fc5d-b06e-430a-3132-08dc9fe9559c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yqHZjpK9aB/OT4XnVPLDpneiS7UeEUt9+VfNNIxtVDvKu8fH1uco/aZn++5o?=
 =?us-ascii?Q?DQcXx/Lj8jJXDrYXoWQTgKTOduS6pnT0Flsu3uiB/BtCfUH29SmLpkB/F7Mt?=
 =?us-ascii?Q?9lt8cDNZCUsP+1Z9KfYVSLly2zEBJ1a1ygHGpOiMa+L02hnEy8Lzp97u/otQ?=
 =?us-ascii?Q?W2T22xRI32NGUez4iQZnzTe2HaJnVefraSt1tgnlCOnit0aWqiFlvOirkyqT?=
 =?us-ascii?Q?LUqt2zMHKhQb9mvwG6WwToAVBhgi41lyHWiZx8JTqfJ2tf5xMmmJhl1xWuSr?=
 =?us-ascii?Q?soK6KQJz9Jj8Do4yBSGyVryr5AOGz5dthVwVSy8a6DtxvvaflX9saO2QUmC4?=
 =?us-ascii?Q?2C9iolkjNbHbxV+m5EscgRikC2WuyAobxEE1oa/Dd13EPUAdCHSFlnhkWPcS?=
 =?us-ascii?Q?ndrPQurZ8SW7Mg9gVDglJNpJM4powYKjOm19s3Ui8D25Owk9sC4FXkYQsd9d?=
 =?us-ascii?Q?epn8cb9IQotghLtI5OK9Xnlw+e0f6TPDES8IDEEba629NhYTFx9cFwko1u2l?=
 =?us-ascii?Q?oDuBz36mXzv8t5Q83L74BDwivEhHxKq8JcVYlvdL+0Sq139GEA4rxNY/a8P4?=
 =?us-ascii?Q?kTRDqGbL7HBui8HqNKhs9+V2VXO4IqilWZnJTg6dpZ8S+sEokYmuo6XRQy6y?=
 =?us-ascii?Q?1YBBIoC1Owmx2j3LRgypnF3kjCB37Pj33JcG5h0RGujtgsSygWCVQ2wt3pm9?=
 =?us-ascii?Q?AFMzKwEaQoCd/qolNjRbR6sLiFROrFZ08kIyDpG8k70aPzrFJS/QmQE/6+dB?=
 =?us-ascii?Q?PHbasdHITLRVLJh0ogsPU1XXK4L1FsFG0icDx0Iji/xuRmgs4NtswJzvGsn5?=
 =?us-ascii?Q?lkNRjfCQ1nevZzXO62iJnGjLGFy+Lq4xvEo5qJYpxTdlyNxSWidsWBF+aoPl?=
 =?us-ascii?Q?re5b/ePgq3oJLHdz32WbHBy/KaOStPKzWUv74ClVHWXq3Tt60XpcJDes1ZGD?=
 =?us-ascii?Q?DyPsp1ICx75DuykOwvZLXkb3vAz+b2hU7ser4CQvFFIxA2Pjn0V0UBQniFnA?=
 =?us-ascii?Q?MQtd4BsfFNEnH156HkRnwVPOg9DoYBCFxM/Ol/nXuqQZElTkHDxVCrneoutb?=
 =?us-ascii?Q?9ZPedC4URKgxIfoWJY7j7hN2u+7UEBR95ejWsU06ZiFc92Kzlqav1ASSKTXx?=
 =?us-ascii?Q?pheqp316InvO6h0yIGBJEJrlXftjZuGC+LIZ26SQNMe6el1gN/Z1jnnVNtOk?=
 =?us-ascii?Q?eVQJMXn4VPsUDYh+36NmPicVs2ZrCmzxo5dBcsy2dq6HhpvO63dYT1zukYeZ?=
 =?us-ascii?Q?yM00NY0Kh5zJaPO8hcxKs2GsWRPnhtiXfHxfAOJn0xP3cHD/XwHPjB8Wsq3o?=
 =?us-ascii?Q?PgAvBt22hKE5sMNFc1QvK3cDkN0KZQwZfYuwSbMYd13y4CU9MYCbl3q7egBb?=
 =?us-ascii?Q?3x0iGohW1HNXzDaqoI+49KaJbQamIaB+DSsr3qx07VI9EKo5Mg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TwvU3I/y0cauk1KEocH4qvCyqbC0hN+6gw6bXBYU+v5nsNkynu6at4rRBiqV?=
 =?us-ascii?Q?qt+dLAxNSo/B4sxwGS034k52QMFI0GLI54ouseiLKM9Oo9rC9qgJjpNatQa4?=
 =?us-ascii?Q?rlWWFOtxl6MQXYF7By/nsZJiun12DYd0tkIWGc0bGOAIfeFTWqJXJT3Z+HOa?=
 =?us-ascii?Q?FRc0HlumslZac/SbZl+epRmtlfjTaepbqcNjJq01ikz+pvO+0IO4Eq5ua47o?=
 =?us-ascii?Q?o3IrQM5tAI6Um/DuS3hnO9bAPCq843AFLeU6ZmdiENunPL+cPFZ5w4cwYJum?=
 =?us-ascii?Q?8wAU5dVdHoAwrJg/NX4Srpf58Zqi0knfY1nuZC1ybStYjuVpB/GI2v9OXEcL?=
 =?us-ascii?Q?8f5HLAL8IHqRWktzcONhJa6b9zpjj/mxQ9Exagxig71KkR9FkRrIpsJybOQ0?=
 =?us-ascii?Q?bX7TvyQsL0NYIO0P+/q/LdyHUh+EXEtLa9u3iC9paJHrQBsWo+UwecVbPrDd?=
 =?us-ascii?Q?1KhSaZe+fDCpxWGQ6b2frtXNwOjKz/M4MhiPoajFv77b21oJvKdFmXlz/ISl?=
 =?us-ascii?Q?dFb3S+ltU7PljnLyfx0H/sm48wxCZx9suF9GTB8rMGlHk1IfnEqsJEU1ki43?=
 =?us-ascii?Q?x555miR3gWbrw4BTUE2wfwDbK/CkUrypPNu8adDTCji/41nM1VhUtnw6dot1?=
 =?us-ascii?Q?EwHg+laikafqXWA9YAPZwMDgcurtECARPOI4fa3cvDOFoXD8IU747anK86Fc?=
 =?us-ascii?Q?LPtizhCL5Ak/CkN1IZ5fB+hcYS0L33VmpouTHgA5+redjiAj2rjbSmcuGW3N?=
 =?us-ascii?Q?xeH5yhlr2sMpaKlkLEWdmkxrPaiFGlkA9rD9C2GHo23Q1Tn+5Yp3fM+wnDIM?=
 =?us-ascii?Q?qIhjhu3fERhDyls0WSUO9qZ2eGv4telVcrIz1e8suk9dWPvLyh8EMS3SlioR?=
 =?us-ascii?Q?HK+zD49nJvAHZmBk9d2rAsqVPS4JxeoxbKY+BCbafsy0Wh95+fw11nyD6ugM?=
 =?us-ascii?Q?wSMS9+wDL5+gXdd36D2N7WUkqCI77B7TmD+HGCgNigv5UfTthz4noj6pFQYX?=
 =?us-ascii?Q?6MjK/qTy94Q6AabiHPX1FCpF2eiKHGINrrFCwqcOxEAyJFpTQvD+9429wNNo?=
 =?us-ascii?Q?YpJ8rotfG061JPxdPg+tGpvr1MMjYfIGuGZedVBB5P5ul/yqzi+OKzX4Svei?=
 =?us-ascii?Q?TLDtXWH0XtNakXydZ/OMfctQWGZm14b057ecSIrvbuqWPwzEnjsLNAs8ExoB?=
 =?us-ascii?Q?uA4aBvlWGkS7lGE9DEMFbSGtm11WJ6md5y+flNJ9v9lFS+3/gOGStpwoJOHU?=
 =?us-ascii?Q?AauCDOOmqyZqrDCPO8IHtn2MjYE52PPJBlhISTYMgpxMs+hdVw9PUFr6vo+q?=
 =?us-ascii?Q?Erhyxdv5ck043RCXfgH8kQ1XELWZm1y5Gb1AZqBH6fES/Ct28ZrkF1rH9WfJ?=
 =?us-ascii?Q?+ukzNXNq+uKgPT+U4SmDFbPspcDZqes/TRafgYXAhMmpfcG0oPDLMNBtnw9J?=
 =?us-ascii?Q?rORrJWDkNqAjDxwvtDMbpWMZndayDg49dTxGrTyQnWSsa41RpLlDYS3IZn9o?=
 =?us-ascii?Q?hxV3JsxusG8zEQmXffgIOUQu++1L4P/XQePzB+EK/vkz4J2MJb6yqF3weKzH?=
 =?us-ascii?Q?JQxoNLxMlhr35TGGvbiE+9OV58bM5bHuXtnxQpu0IZL6aqR9YvkToLQJXHvI?=
 =?us-ascii?Q?kg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af55fc5d-b06e-430a-3132-08dc9fe9559c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 07:32:49.1930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0+FQ24RW25I0kW6It8jRQF42pMFphiC9cx2Ftzy7O3Peu1tdaZu7/OWAk9zNymOfKhIo7W0ozCMUZPauTvhbWbmbRdAyQLYk6GhhNlGE9tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720510377; x=1752046377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hs2D8xYXzmQLLq27fLj6XwoQlgFGH6fN5cWHr7c687U=;
 b=aMptCdAb39/9fvdhTivWEGkHImacPVHfAA5UTriIq7k+WQ4TVPPKWV70
 w1HiM2wA3XiNmDo5+5dYc7MctMbopVZe1jHqLLCqcltiH/Chz8J2f/R4J
 OFzdd759G3RO+kT+lDPQ7u1d6US/uYB9b7lAyY31IQiViSgPqziiJgj3a
 Y9w1C1VZv/XHcf5L0Z+jUV2Cf5AYKuxMeHUFSa91vEEuYD3cyHGGlAO5C
 70G0b8n3Dj1S5slBF6a9sag6kRqRBDCO6dJpo0I/xVW9tGXcyonYf7Edz
 hEFAqkUrGPJmPu9CdkGnUajp16fOqWuQzeGfOcYxRo7+vMRiucxvJZm0Z
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aMptCdAb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/7] ice: remove unused
 recipe bookkeeping data
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
Cc: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, June 27, 2024 8:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; michal.swiatkowski@linux.intel.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/7] ice: remove unused rec=
ipe
> bookkeeping data
>=20
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Remove root_buf from recipe struct. Its only usage was in ice_find_recp()=
,
> where if recipe had an inverse action, it was skipped, but actually the d=
river
> never adds inverse actions, so effectively it was pointless.
>=20
> Without root_buf, the recipe data element in ice_add_sw_recipe() does not
> need to be persistent and can also be automatically deallocated with __fr=
ee,
> which nicely simplifies unroll.
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  1 -
> drivers/net/ethernet/intel/ice/ice_switch.c | 55 ++++++---------------
> drivers/net/ethernet/intel/ice/ice_switch.h |  2 -
>  3 files changed, 15 insertions(+), 43 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
