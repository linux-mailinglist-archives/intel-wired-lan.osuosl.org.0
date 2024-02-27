Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D0286A203
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 22:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE54E41561;
	Tue, 27 Feb 2024 21:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JoIVhya4xFQa; Tue, 27 Feb 2024 21:59:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 009E240917
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709071140;
	bh=kZTsUMBPYKOLh4QC7xlUytD+Zq/BLu3iBpr1SXZUb+g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YdKU3BZMTnr5ZkZn/qF02cbYpyyyoI5Bw8cHQJveLKlBH+vLk6VF4sEDd2U/554oy
	 u3eP316ePfcxzKaNrNDg+3rpOoob4ASFd9YpGiNN1/cDBNplOvmKHytagzzJeYDmr3
	 7PLCrcQ7/k5lg8mdxSsL1AmqT4vNcrdP1YXL8rhVUB1NYp9I3HO9ChKbowCi+p0U0p
	 5Wy63EUFGcB+GlctYfQDkaOfwgfVSZXiwScMb1xqYwysV5CP/Mx9z0t+0zN+LK2LQP
	 EkO49e5mpvAHXjpI7ZoCgCuQ6/aGifUzBpWdTwXMQjqW/PbZvG4lA4ropYGduhbZjQ
	 NfvKoMjGLzNug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 009E240917;
	Tue, 27 Feb 2024 21:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BCD71BF3DC
 for <intel-wired-lan@osuosl.org>; Tue, 27 Feb 2024 21:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65DA940382
 for <intel-wired-lan@osuosl.org>; Tue, 27 Feb 2024 21:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3LJxz3PURW_J for <intel-wired-lan@osuosl.org>;
 Tue, 27 Feb 2024 21:58:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2412A400BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2412A400BF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2412A400BF
 for <intel-wired-lan@osuosl.org>; Tue, 27 Feb 2024 21:58:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="28876127"
X-IronPort-AV: E=Sophos;i="6.06,189,1705392000"; d="scan'208";a="28876127"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 13:58:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7140399"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 13:58:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 13:58:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 13:58:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 13:58:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ncb6PZ8upB+ePuVy+HjBIhJ4ZrJBHv4gjxmGvkIJnTPE3swafObZ4Q55VcWRGWrOzty/LIZn75Ttf400ST9DUgjAm7XFFxPUmyT1kX2EfaWbrqxmM/osRdoKGf2VrEvjx7ZUzN3EoY8z7mNWPqBnDMMnq9RoOklV8GMgapNxAY/Ve2N5S2B4KHinjHgnU3xLTq+712SkPGPMWYQa/EIxQv6cFgNUubL7tcBAX3kx+wHIr8dRsqN8lMs3zeZW3J9pA9Juk9wjD21TsXk/fqZcaK8PtTBX814QZQaQvR/GOpUp2NQ7FmHRtolcK6WXFdSQoK4YdJRMXCPEqK2StjD9Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kZTsUMBPYKOLh4QC7xlUytD+Zq/BLu3iBpr1SXZUb+g=;
 b=geA3tqoAv30FS2Xn0jSylO1PO7fHqHpKOsCdtz+6RwQq2e+NW02usiUg00olKEFgApualpIEj5iEddUSXVUJyXyFc4er5eGHT63y+xC0ekiWJ8NIUp4p5SQ7HXioRkF1roRTQpLsiJz6Ih5RzOa/5RhSuxJbfpEwLuiyAkYxA2s3iJ5rrvdE+wu4dR3UeZirbeUwkKrdkThb0ngaD+24druKLIYIgPYEqDrfFkGDIUQwhP7eTVndA0Qcpc6PU7RzK0hgzkXzu09339KVcZAz+fA35VA80LqqLITCfgsBBqssRUBuxkQYKrLM8dvwyWnrx+QGESG+pbYDYdmP2Zdgdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by PH7PR11MB8478.namprd11.prod.outlook.com (2603:10b6:510:308::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Tue, 27 Feb
 2024 21:58:50 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::2764:df21:d682:c419]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::2764:df21:d682:c419%5]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 21:58:50 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "82fa1430-eae7-4635-b663-9fbf8336c891@intel.com"
 <82fa1430-eae7-4635-b663-9fbf8336c891@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Add 1000BASE-BX
 support
Thread-Index: AQHaWhzRNcNQMi4siUuJm4Z1iXJSmrELh0aAgAANQQCAE0aqkA==
Date: Tue, 27 Feb 2024 21:58:50 +0000
Message-ID: <PH0PR11MB7522BC939C7A876A44BBB21CA0592@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20240207231524.51753-1-ernesto@castellotti.net>
 <82fa1430-eae7-4635-b663-9fbf8336c891@intel.com>
 <d28eb982fc9f696a56be4ba591e4b6efd1057e84.camel@castellotti.net>
In-Reply-To: <d28eb982fc9f696a56be4ba591e4b6efd1057e84.camel@castellotti.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|PH7PR11MB8478:EE_
x-ms-office365-filtering-correlation-id: b50d1748-b554-45f7-eb6b-08dc37df481d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MEgZL2IAPngEqUo4RhvRc1jkbAqo9Q7sHJzDRHpD2Nm9j20Sb9F+yT8R572AiEHysRsE1W0hgaQrdCAJRqx1urtzUHIdF1vBui+IRbz6ECQoDRS3tinFs1IQEZ+L6M77nC+LypaDka0RR7R8Fv8ol9WMwlBjECltpksBLichrm1nfJM4c+4JQrmOYJrXXgQf0cP5iz/UBeRsWDTk6kd8tj7nBlWWdOgtfYOAq91Qa+LtagLH0dK2osI9Ugkri01XRZvhJhIIws0xG+R9tMoQD1n8XhtWTl+KVFoL9YlvEZvO14vSvx4Fct4hnUeHq1UiarzZ67jRIyiPTNrv7rZsdPTuvXuiyXWFiznyN6mrtNqZ17EVNrSVt4j195wJc+oUTESDdwcxBXSFj7Afos0miGrakAaVH9DErUVSQNwXnyWFkiF2MSAJcBQ4WOsB1MGvSQLAZ6o4JhqrfeUY6YLC4tlx1HVGX2a+FVeIHpphMIe2vQCdt2npKqLW5bx3IcIo02aQYyOVT0KTI/qMa4kRS8xS4J8F1cZP1OkU9TWV3JsE8i6cqZ+8b9M62LAA7qvpMd7rRjpsf5Cabj6aq1/5PxoPPVzZ/WkJjAGTyPldP655xUB2C3XwLS+MiLJp8ssy1cQdC7pbxmzCJr1usar6AU4TifUIXGgSK+mq2WLu/Y7v8VAP+PJOEwzOZO5qvj9UwUsFFrlmT4MOLMSNfV6YvxOMRKBMFmpa7qugkQbBtOQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUFSemJwb0RnQkJOWEllbys4d0N4NnI4Ly8wYmp0RFdxdWVaLzhpODBUMU5E?=
 =?utf-8?B?d2NpUlp1RlZvNlJ0c1kvVXZWczV2SGJRK2hUQi9YeitnTzJDN1BkNFRjc2Vh?=
 =?utf-8?B?OVNkMDFuQ240QmlxMzI3REY4aGN6Z1p1VmpVQ1FPZGdHV3ZWVkxDQlZRNTdv?=
 =?utf-8?B?VkxBTk84ZWxiMUYvMjhEdnluZlZxQm43YWUwRXNDR1RaWXhvb3ZRODA2VDRx?=
 =?utf-8?B?RmVzNkFlWWJqaFp3TE1RWFArVXV0WnhJajRwRS9ZNkdaVmd4Mnl1S0dWdXhC?=
 =?utf-8?B?dHJIdjJ1UzlNbWg0M2I4MCt0dnpxN2xhNStRSWovbVBJMWxucVAzU3RoZGxR?=
 =?utf-8?B?clFuQlpGN2dISUtVNFVHVExZN3M0NDJQQVl2YTA3cGV1SGpIblZReXdaanJu?=
 =?utf-8?B?UFhDVTBFdFlKZWJwMGtYZGV3UVhPckw4WmhDbURuU1BoSHJOLzFlZXRaU2pa?=
 =?utf-8?B?ZjNWUS84eCs3c1FpcFFybnM4ODhwaVhvZlpzS3orWGtrdDdKSmJFZXBUNlVw?=
 =?utf-8?B?VGpvUlRNQTVoSFFyK1ljSUhpbUNsdlRXUmZvQ05icFVGemd1NGxyb2N3SStQ?=
 =?utf-8?B?Zmt2KzF6akNaV3NRdmovK0NoMmpxdXRwWmRab1plV25sT0ROTkFLMVJ1TkFU?=
 =?utf-8?B?VWFOMEJMRlgwVUtTTEhzNkhRS2xxbGRRV2dNRlcyZ2YwUUhWL3lVQVF6Z29n?=
 =?utf-8?B?cDFrSzNFbUxHUVVIblVmQ2ZyYlZpSDc3S3ArT3dvVXFvYm9iK0dhREQ5eHJv?=
 =?utf-8?B?cDlNbjRPWEE0QTE2SDFFaE5FekE2RWtHK1FjM051U3VBK1UxK09BRVVmREl4?=
 =?utf-8?B?aFliQzFOUWRpVXBBN2g0Q2Y5RWRkb2preXRIVmE0RTVFWm5qTUtqV3pweHR3?=
 =?utf-8?B?V3VVT0NEWVdoUG9zYzl1dE9zUXJ0Y0JPdDVyTEorWm00NHdJelNBdGVtYXlx?=
 =?utf-8?B?RTNMZGtyNzY2Q09kbS8vbjAvK1oyUGhMUURPT1hzK0xKNmR0YkhvRTlDckd4?=
 =?utf-8?B?cGJ1SVlrUVRzVHhmb1cyMjVJRTgrMUZNVVZuVVJrY3UvdjlWQkp4MWR6NmdZ?=
 =?utf-8?B?WERBclBtZFd1V2pGajByS0IyM3BHdWJ0T3dEQWw5MzRWN1VPZmk3WmVhbGI0?=
 =?utf-8?B?NUJmRVpkbmlPbTJRa0I3Q2NTL2srZW96UnFzMzU4am9jU291amJvYUY0TlZJ?=
 =?utf-8?B?SUNsc3dUekh4WjJIK0drcU43V1V4ZEVKNGg5TXNJL2JSME8rbmtLcUhQdkRv?=
 =?utf-8?B?OXNmbEh0Y29lbU9FZXZQenFFQU5lVXIrMDE5cGYwUHUva093YllMam9UM1Bz?=
 =?utf-8?B?ZGo5YkFVUitkd1FLS2tqdEY0N0NpSENBMVRPOVRCc25VSDVmck1nb2s1TWJI?=
 =?utf-8?B?WTNwL2FyRXhDdHhVRkxXQmpMMmhjVTNGalllWDBaUjdYc2ZYYVdkS0RlajFN?=
 =?utf-8?B?bnVLdytLNGpRTWo0T1pSTUlZekZKODFIczE3NjQxMnVrQmN5L0NzeW10ZFdD?=
 =?utf-8?B?b3lnR25XL29jSkJJNFAyWFVkbTJwOEsrd0txdEJRSjFEN1c3bjlSbEpmWHZ1?=
 =?utf-8?B?OHNWNFJNeE9PVFBVOGI3dEhkbFpuU1pjeVdGSnhQdXVnM1FHRHVKa1NndTJp?=
 =?utf-8?B?RVJUeXg0NjZiSzYyNS9jVXZoeW9wUmpscXJGeFAxQkJhL0xsM2UybE0vZCtZ?=
 =?utf-8?B?V0JlRnk3eEdyUDc1S0hDQm80eWxvZzM1a3VrTEJpM0dGTXRJSHZhMjJTcWdR?=
 =?utf-8?B?QUtJK2QvTzVCNXVlTVFyV0tnWEQwRU1iUUxhRXJIZlFSbkQ3Ri92VkwyZjJX?=
 =?utf-8?B?QStwVUVDQ2NQUGI5ZHBxRlYzSzZRa1EwOGQ3WEpmQjBPTm5rNU5vM3dKdEFD?=
 =?utf-8?B?QnZjWk8wTGpQdERHdHF5aVM1cVFYZ0FEcFZndVlmUzJPd1BIWml6MCtXRVJN?=
 =?utf-8?B?VUxnNEFBVEZ1VHBOZUlMYWZVdjFVWGJkUEdoYm1SNlFSbGlMUElVTUovTEE4?=
 =?utf-8?B?OEo0ZWhVdkVsUVk0Vy9BTUd6REZuSjA2aUE4bW9rQVcwWEFGMGN5ZEtmZnp5?=
 =?utf-8?B?cDBKYnl4akswN2JVMG9PU3R1R3pWUG1IWEltVktFanc1a2JQL3lncVJ3L0wr?=
 =?utf-8?B?NDdTTDBJa3UwNzJ4SCtaNVlZc1NhWmp1b3ErWU9xWDJOV2xuaTkwQ3c0bFlM?=
 =?utf-8?B?SWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b50d1748-b554-45f7-eb6b-08dc37df481d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 21:58:50.6344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PlJfgS1JdE9qsnfjGDp6/EKZ8hqGNpUtgcLxJlnjIKkbZaPWfvXOUmERPYHOgAT88D1O4vkOPInpdH2G70b2acyIPtaP9mbH0MduBtrG4bc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709071136; x=1740607136;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kZTsUMBPYKOLh4QC7xlUytD+Zq/BLu3iBpr1SXZUb+g=;
 b=CHFHUx7QeImcrWA7383TP+sSsbce8rRmDKoYyvOBnp8SHhkBplcLG3Nd
 HbObMimbqz7i4vNybWWzj7EDUGbTo3q7595u5s0qr8t67BNcOINPc6Tlz
 3j2T0yINCSmb/GPSd/jHdVQgeresfmxLYxiLCLRIIXEDfSuM2412Ch8It
 TciREgNZk7h8Plnn1JlLWo7MIS9LzpgDdqpJrAytxKKGYpLAUyh22Zk5G
 eFyGlFig6K27XPMfXvTj1Fwa7sJ/+NhZ6M9R12oiBwinM2dOSzAmr5ag4
 krvngZ8mNs7HNencNWTciRM0tu5WBSli7wg3BzmtFjL5e0b/BDfsG0iXs
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CHFHUx7Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Add 1000BASE-BX
 support
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBFcm5lc3RvIENh
c3RlbGxvdHRpDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAxNSwgMjAyNCA3OjM0IEFNDQo+
IFRvOiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgaW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmc7IEt3YXB1bGluc2tpLCBQaW90ciA8cGlvdHIua3dhcHVsaW5za2lA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1u
ZXh0IHYyXSBpeGdiZTogQWRkIDEwMDBCQVNFLUJYIHN1cHBvcnQNCj4NCj4gT24gVGh1LCAyMDI0
LTAyLTE1IGF0IDE1OjQ2ICswMTAwLCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6DQo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfcGh5LmggYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9waHkuaA0KPiA+ID4gaW5kZXgg
ZWY3MjcyOWQ3YzkzLi5iNWJjNjA5MTY0MDIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9waHkuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfcGh5LmgNCj4gPiA+IEBAIC0xNyw2ICsxNyw3
IEBADQo+ID4gPiDCoCAjZGVmaW5lIElYR0JFX1NGRl8xR0JFX0NPTVBfQ09ERVMJMHg2DQo+ID4g
PiDCoCAjZGVmaW5lIElYR0JFX1NGRl8xMEdCRV9DT01QX0NPREVTCTB4Mw0KPiA+ID4gwqAgI2Rl
ZmluZSBJWEdCRV9TRkZfQ0FCTEVfVEVDSE5PTE9HWQkweDgNCj4gPiA+ICsjZGVmaW5lIElYR0JF
X1NGRl9CSVRSQVRFX05PTUlOQUwJMHhDDQo+ID4gPiDCoCAjZGVmaW5lIElYR0JFX1NGRl9DQUJM
RV9TUEVDX0NPTVAJMHgzQw0KPiA+ID4gwqAgI2RlZmluZSBJWEdCRV9TRkZfU0ZGXzg0NzJfU1dB
UAkJMHg1Qw0KPiA+ID4gwqAgI2RlZmluZSBJWEdCRV9TRkZfU0ZGXzg0NzJfQ09NUAkJMHg1RQ0K
PiA+ID4gQEAgLTM5LDYgKzQwLDcgQEANCj4gPiA+IMKgICNkZWZpbmUgSVhHQkVfU0ZGXzFHQkFT
RVNYX0NBUEFCTEUJCTB4MQ0KPiA+ID4gwqAgI2RlZmluZSBJWEdCRV9TRkZfMUdCQVNFTFhfQ0FQ
QUJMRQkJMHgyDQo+ID4gPiDCoCAjZGVmaW5lIElYR0JFX1NGRl8xR0JBU0VUX0NBUEFCTEUJCTB4
OA0KPiA+ID4gKyNkZWZpbmUgSVhHQkVfU0ZGX0JBU0VCWDEwX0NBUEFCTEUJCTB4NjQNCj4gPiAN
Cj4gPiB0aGlzIGRlZmluZSBsb29rcyBvZmYgLSBwZXJoYXBzIGl0IHNob3VsZCBiZSBuYW1lZA0K
PiA+IElYR0JFX1NGRl8xR0JBU0VCWF9DQVBBQkxFPw0KPg0KPiBJIGhhZCB0aG91Z2h0IGFib3V0
IGl0IHRvbywgaG93ZXZlciBCQVNFQlgxMCBmb3IgU0ZGLTg0NzIgc3BlY2lmaWNhdGlvbiBjYW4g
YWxzbyANCj4gYmUgdXNlZCBmb3Igbm9uLUdpZ2FiaXQgRXRoZXJuZXQgdHJhbnNjZWl2ZXJzLCBz
byB0byBtZSBpdCBpcyBhIGJpdCBpbmNvcnJlY3QgDQo+IHRvIGNhbGwgaXQgMUdCQVNFQlggKHRo
aXMgaXMgd2h5IEkgaGF2ZSB0byBjaGVjayB0aGUgbm9taW5hbCBiaXRyYXRlKS4NCj4NCj4gQnkg
dGhlIHdheSwgdGhhbmtzIGZvciB0aGUgcmV2aWV3IQ0KPg0KPiBFcm5lc3RvDQo+DQpUZXN0ZWQt
Ynk6IFN1bml0aGEgTWVrYWxhIDxzdW5pdGhheC5kLm1la2FsYUBpbnRlbC5jb20+IChBIENvbnRp
bmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
