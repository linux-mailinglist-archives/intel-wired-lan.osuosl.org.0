Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F925BB9A1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Sep 2022 18:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36C464001F;
	Sat, 17 Sep 2022 16:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36C464001F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663433887;
	bh=H67ZFS4fUW+thuAaZKse9JD9+QLtTXQQzDAWddGGU30=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9CThG9Nubk2uM7sfKYPnhddspyDlF2thmdVeqXYdZBcwf5d0GbQvoKUTNduObUgoi
	 kdPDIaNXIJgDG2O8i1Bh6fXwhi1qvK5Dxb1stDGeOm+GhclaxnstEQ0S5zJyii28lf
	 Np4rr6dRzZANW1A4SWXCap8SuHG9itnHDlqTUzh9hfGH/PxKgc1mJZEsp6H7sciSAi
	 2U5BofUStFeUSfE0z/M/h4Lg/yv0iYwT293JpXPlhPnX0xXqd+FXvHEuwND6Edk1vJ
	 A3cvV4N7Q2nqoI0pOm5kP/k4pkCigp2MdwjWfTN/84Mj0/1vLRJK7EmS2KkU3coR28
	 jH7d/wNzUpjhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aqz_hSve2ooW; Sat, 17 Sep 2022 16:58:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2FD1341D5A;
	Sat, 17 Sep 2022 16:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FD1341D5A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A6C11BF292
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 16:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF5EE60A9E
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 16:57:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF5EE60A9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VorgDFR9gsOG for <intel-wired-lan@osuosl.org>;
 Sat, 17 Sep 2022 16:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57EBA60A94
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57EBA60A94
 for <intel-wired-lan@osuosl.org>; Sat, 17 Sep 2022 16:57:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10473"; a="296755764"
X-IronPort-AV: E=Sophos;i="5.93,323,1654585200"; d="scan'208";a="296755764"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2022 09:57:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,323,1654585200"; d="scan'208";a="680324168"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 17 Sep 2022 09:57:56 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 17 Sep 2022 09:57:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sat, 17 Sep 2022 09:57:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sat, 17 Sep 2022 09:57:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bMJiSxXO8g9heWjKUwszvSQcsvggEn6DaK3OwDTQy26SqXu1wH7Iqy0Cr7xDAje7wvabtUpFxqOUa9J+j0DiUw6mtnezgvmStsXN2dbFcoyrByCSrjFUHdYdPzYgvyDLEEGDgAnBolkKzTHYj68588t/hJ3o6rWVerfqZSbLB/HYobaevOkwCUaivcpa/mhIv8gCbWY1T8Vi5RKkJunHwopSPPITZvoZnHYT6LSxl1nDybjkZWBbXTsPpWaRQf69fUfEnbUlMpDVweXaRWOOamVZeBovZNwa4B+K43iIiGzskeEckSzgTlxIc0txn7P/NlMqNx1gaVcgArxbibuLjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AB/pNmgJjeurkcepPZMSr/JBA/dbHLy1eyqXJ5s1+28=;
 b=RWR+gyJiAWuqwJYzPNLRwndRtZ6WPuN188lghQbB3oePhhdKqq9reugQUewHy75adaH9WM4r7PmhKWGpP/PuZZ4hkdZ8Yiksv31HwPloCQ6Fj0fCokH6FbVRU346bN0+y/g3XGhOKGYh8xWeOHeQ3ZAbIwlj0oXqXIW8NFZtWGMVvfQn2mr1I9cd3ANjRttkoEHLOzJDZ822alWZzerhkrzENnQZVSNZh7UXTniu7AmpU09R09F9+rxLz9okQATm7TfTNxSmM5K3Vz5Mbl3fNvcNEIIQMj4T2FUl9wQkbNdT19o+a2l5uWIFmL7c8xz29d3MQQDVlhOOCsVNLiWQlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CO1PR11MB5043.namprd11.prod.outlook.com (2603:10b6:303:96::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Sat, 17 Sep
 2022 16:57:53 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119%2]) with mapi id 15.20.5612.022; Sat, 17 Sep 2022
 16:57:53 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [PATCH v2] igc: Correct the launchtime offset
Thread-Index: AQHYylIjf942Hf9tzEWDtfFKH1ri363jtnEAgAAd8JA=
Date: Sat, 17 Sep 2022 16:57:53 +0000
Message-ID: <SJ1PR11MB6180D9AA201B736DBC9A30C0B84B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220917045801.15555-1-muhammad.husaini.zulkifli@intel.com>
 <6f5f22c4-45dd-bfd4-cc9e-f1bb7035abaa@molgen.mpg.de>
In-Reply-To: <6f5f22c4-45dd-bfd4-cc9e-f1bb7035abaa@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CO1PR11MB5043:EE_
x-ms-office365-filtering-correlation-id: 7806a771-88ba-4c2d-a263-08da98cdc31e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U+7XZggcg6JsdapbDTCFnOVEh0EelbviT99o2vDpdMxqkurH187+RrgCSKMw1XezHgRCbVwi2TfunwHTWZy2gt2PtpCukDOmJQq+X6i8UBKgywjIzWWp8OMtVjT0kKqfkz3qHNXavzwx2FoJ34xw+ugX/3xqW8FSrB9kxQvmDkzAYjz6NGE+x8bL0K2XcwWHza9oiZbf9YhU8w8PQtMnyzzSHDh1Fy8qp1zxtdgWUNzGObukVbRmJ+C/AosIhlcnrZy/9B5yFZ3GMDinwhtCniUNq7TJ9cyKbj2JyMHOcJbqehi92d6rZo5wOhL6LHMz3CA0ZMTfLDal7yM23S2GHAzNLWDvwnwNIIdM9RECThrL09n/Br2RAPXN2y80ezFRpOlnq0tVC/nH15/l8Lmd96a9YmxeqTaHMBc9WuOL2aaX7i80bAZ6MYPeG72Vj6tAf6gwAsxg4Gr80vigMuvP9++Z7+eMF+j1Jnps0JQklPYnNj3WUVohkLK6fEEAkSHFtslC0R6YgsTD8D9tKFxZgB1qGsFx+Et/IixZhtTjX1DPkuFdyPjmhYLaFeRa6lg0m63M+o8eAl5Ficb+csWPzOyewJu77khfAYy+4myKBUU3KfLWAaeKjDXf2tohx8IqhWih3gwsN3l9foDIyXWi0GG9Zj9oQkmKRykd5WjAUsZRdHf/8srIMCJwQsJrkq0wyIm1U42OU7aW8NjQaoeXZOS9s6N0VuOQFbOPjSfutEfxmVguCxe8CEGFyybKff303Gp+oqzQM9eODXdPdSW+OQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199015)(66476007)(8676002)(38070700005)(76116006)(66946007)(66556008)(64756008)(38100700002)(66446008)(4326008)(122000001)(86362001)(2906002)(8936002)(52536014)(71200400001)(83380400001)(186003)(478600001)(107886003)(41300700001)(26005)(9686003)(53546011)(7696005)(6506007)(316002)(6916009)(54906003)(82960400001)(5660300002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDI0Sm4rTnFEeExSL1lXVlVLT3I1MHJnQmQ5ODBETXBkMjY4R2dOTHAvRk9m?=
 =?utf-8?B?dVJ5bFVFejR1azV1TUNBMndUTFc2eWx5QnlnWXBMUm9UWFpzd2hHWlBuRnlv?=
 =?utf-8?B?RXg0TDVjbG5aQ2hhS1dBalg4cUZEMnYvTnBjdFh3a2dtL29TT3Mwb2xBN09D?=
 =?utf-8?B?UHA2UXdNMXVSQmplajJHQXk3eHRrUTREWGp6WEkxR1ErelFyYnA5bGo2UUZU?=
 =?utf-8?B?ZHZBT05CVGpIeHRuQjlENjh0aGdIVk1nUE1zUTA1WGUvTUVyS1ZQTFFrWUI4?=
 =?utf-8?B?KzY5czdoVGFRS3NJZjMyUWtNcVdIaFZYaDZyVzJEN2UwUHJGc0wxbk9mY3Fk?=
 =?utf-8?B?bzZIa3JZYldMczBVaUY2VVpQQlJQaW5pNFNtZ2xQMUdUdzlDdWtVaU1aRmFR?=
 =?utf-8?B?NWZaNE5BNS85czNINlROSklKUDk4VjdSdjVFQ1k0YWtneERiVk5UY1I1eTkv?=
 =?utf-8?B?cDJSN0h1Wnd4TTIvdmVGMkJRM0F0Tk0rQi9pVG5TUXEydTdjb1YvVk8wRHhk?=
 =?utf-8?B?RmJkLzB4OWRHcWViZU01L1I2V1kxWGtRM3NsWWsva1RUV1EyemI3dVJyNysw?=
 =?utf-8?B?czNMeGk4VzQvRVBsWElTZzVaN0xZVVg3bnV2Zk5uT1M0UXNHVTZGL3RtZlZV?=
 =?utf-8?B?L1FzUkJxYmliRTBYTW9lRVlReXhjNzkrQkluUTR6aytwc1VUVC9QN1NsUW8v?=
 =?utf-8?B?VWJsN1E1U0Q2NmZxSzN6TjU1OWZRdlpyTnBLNWZ6QlZhZjBaNnBoblRWUEQw?=
 =?utf-8?B?eTZ1aWN0bGRQVTVPb0RFbzUrZDVIUmlhL2FrNzVCV2Fidk41MkRVdW1xNWUz?=
 =?utf-8?B?MkF1bkpsSzVnWHozc1JVNzFDVVlqcFFZVDY0b1Z4VXkrdTJwcVVrVExmQ1Vo?=
 =?utf-8?B?L1FnS0tzd3Zna2JYV01TR2ZMdURJekFaVEljeHdaaTcxWWtiZjd5T21NbDZO?=
 =?utf-8?B?bDdWUGZyWTRmc0ZTZERMeitnc09hbEtzYURJQW9udDBRQVBEWmpzTlVRRUli?=
 =?utf-8?B?K2N1WmJPWGk4NnBFb1pEMFpHQS92QndSeDJhYzI1Mk11aXhzek9TZDRVOWVt?=
 =?utf-8?B?MTRhN2VFa0ppSGkwL2kxc2Z6Vzd3eXJBMi9aTEtzTHpBdmE5Y21GaWZ6YVBF?=
 =?utf-8?B?MlhvdDRnbXI1YndiNXZtQU11dUNhU3ZwSVYwUkVsWDU3UWZYaWNQVmV5dGRB?=
 =?utf-8?B?YzVrdXQ5cllja1F2VjVZR21UR0Y3OEVhNlJZQTR2a1lqVm1HWlprSG1EMnNh?=
 =?utf-8?B?ZmxnVjBDVjROdzBDTGdWTGpvelVtVHp5K1hMQlZ0bGk3SDhrc2tjRFV5Y1Ji?=
 =?utf-8?B?a08xVXdwdkdqVGU1M3BORURUVGJiTS9kbElsenpid3hmZWw4eW1paVJLa3Qv?=
 =?utf-8?B?c0tIeGpnbTRFbjJHNWVHeFZ3QVJsNWozaHNFdjRHbmtSTjVCR2tabThZUVRD?=
 =?utf-8?B?RmFFMlQ2UzA3aFZWM1BKdm4yb05adEpLOWI2WTVYek16MjU3aDE3TE4wN1oy?=
 =?utf-8?B?RWpnenBrVWp4MGNqdmNJRndSOERwODFCTFhOejFIeHIxOUIyVHFKNlZzSFRs?=
 =?utf-8?B?eHhVNWFFVVYyNkpBSm1PK29yS2dCenFOOXRLRVY3aW9GcVdrRUxkUC94UkZ0?=
 =?utf-8?B?cGRRdnpCcnMxWjVNb1BLN3FaN2dQYWxUOWdiYXVDUU9lTWYzbXlFT0Z2Zjkv?=
 =?utf-8?B?Z3JvamtvcTZFN1RzeGZKRVUzY0NjbjJycWRsZGRPWHgzZHhzTE9CSGErMkR6?=
 =?utf-8?B?VFJzL3BnWFAxRGhsRkpJRmdNOENnd1hoL1RtMW95amtmSkpoSUVjVnkrTUM2?=
 =?utf-8?B?aXIwSzF4RU5iMytlTW1HU0ZKV0h4ZnNDK0hwRTJFOURycGVzaGdUeWh5bGZO?=
 =?utf-8?B?c0tvZ0JYMjZMSWw1WjRjMnpxYXUrdC9mdmNXL1MrM0RZZ2JrMGtZT3JHT004?=
 =?utf-8?B?dW44NE5uZytQbGQ2Sk0vZDg3ZWR0OU5XdXJjVDBiZ1AxSnhoaXBFaUpyVHJM?=
 =?utf-8?B?TDhRMllablRLdisrWGM4b3JUUmVLQnMvT01ZeC81dVRCQUE0dmpxRWhKam5S?=
 =?utf-8?B?RVN4UDhvN3hGZDd0T0JjeXVaQ3BDdXRIL2J4RTloREF3T3JldURlTk1wcy9v?=
 =?utf-8?B?eVRKUGx4ZW5Tc2psdTVON2NTVWdDL21jV3Nvd2RFcTI0VElPUTljemVFdEJE?=
 =?utf-8?Q?I48gJrhhJ/PVkmqN2QYyLOw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7806a771-88ba-4c2d-a263-08da98cdc31e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2022 16:57:53.5472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8ymS0Poi5mcF5IOz+kZuPahTxgWpM8GquEbeubNVZmCibPHDIGTpGdiUk1bzRE3QIk1ceEY6wN0DXbLwxVoRshBJJajirf+ldA9DX+7I9UXlUMkHuyR2Tpk8Omnothh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5043
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663433878; x=1694969878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AB/pNmgJjeurkcepPZMSr/JBA/dbHLy1eyqXJ5s1+28=;
 b=Q+1a/YbQO6TF5sa1YsEsPZWqnMHd104pNoWVdHCy7LHyddqaUw4k5ETl
 WWmab4zbmwRI4SKkfpiMxsUV50d5mTfi9J6OVUq14NT7QFJeveFT+4b26
 U18XHvvBapFVQRY61XSBpijWAfyq8i5E/WxmRmd/+W57TpU+D+9D4ohbN
 4HWWqtYk5ROqYToV+AGtNnPGCahBV44tQUmSqxhtm1PKdGjA4XJZCn4Ph
 eU6a3BAb2tbHiFRCy80djcdcbPWYQxV7K9bKjEgnTduLq+NO32t4ybita
 QUx+fUCClEKZvEDRTWk9R8GUJIoluTrfbYxCCYonPZWF+PrGOhSM0FtcJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q+1a/YbQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Correct the launchtime offset
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+
IFNlbnQ6IFNhdHVyZGF5LCAxNyBTZXB0ZW1iZXIsIDIwMjIgMTA6NTYgUE0NCj4gVG86IFp1bGtp
ZmxpLCBNdWhhbW1hZCBIdXNhaW5pIDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxpQGludGVsLmNv
bT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnOyBHb21lcywgVmluaWNpdXMgPHZp
bmljaXVzLmdvbWVzQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gaWdjOiBD
b3JyZWN0IHRoZSBsYXVuY2h0aW1lIG9mZnNldA0KPiANCj4gRGVhciBNdWhhbW1hZCwNCj4gDQo+
IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCj4gDQo+IEFtIDE3LjA5LjIyIHVtIDA2OjU4
IHNjaHJpZWIgTXVoYW1tYWQgSHVzYWluaSBadWxraWZsaToNCj4gPiBUaGUgbGF1bmNodGltZSBv
ZmZzZXQgc2hvdWxkIGJlIGNvcnJlY3RlZCBhY2NvcmRpbmcgdG8gc2VjdGlvbnMNCj4gPiA3LjUu
Mi42IFRyYW5zbWl0IFNjaGVkdWxpbmcgTGF0ZW5jeSBvZiB0aGUgSW50ZWwgRXRoZXJuZXQgSTIy
NS9JMjI2DQo+ID4gU29mdHdhcmUgVXNlciBNYW51YWwuDQo+IA0KPiBQbGVhc2UgbWVudGlvbiBk
ZXNjcmliZSB0aGUgY3VycmVudCBzdGF0ZS4gV2hhdCBpcyB0aGUgY3VycmVudCBsYXVuY2h0aW1l
DQo+IG9mZnNldCwgYW5kIHdoYXQgcHJvYmxlbXMgZG9lcyBpdCBjYXVzZS4NCg0KTm90ZWQuIFdp
bGwgYWRkIHRoaXMuDQoNCj4gDQo+ID4gU29mdHdhcmUgY2FuIGNvbXBlbnNhdGUgdGhlIGxhdGVu
Y3kgYmV0d2VlbiB0aGUgdHJhbnNtaXNzaW9uDQo+ID4gc2NoZWR1bGluZyBhbmQgdGhlIHRpbWUg
dGhhdCBwYWNrZXQgaXMgdHJhbnNtaXR0ZWQgdG8gdGhlIG5ldHdvcmsgYnkNCj4gPiBzZXR0aW5n
IHRoaXMgR1R4T2Zmc2V0IHJlZ2lzdGVyLiBXaXRob3V0IHNldHRpbmcgdGhpcyByZWdpc3Rlciwg
dGhlcmUNCj4gPiBtYXkgYmUgYSBzaWduaWZpY2FudCBkZWxheSBiZXR3ZWVuIHRoZSBwYWNrZXQg
c2NoZWR1bGluZyBhbmQgdGhlIG5ldHdvcmsNCj4gcG9pbnQuDQo+IA0KPiBQbGVhc2UgZG9jdW1l
bnQgdGhlIHRlc3Qgc2V0dXAgYW5kIG51bWJlcnMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpT
YW1lIGFzIGFib3ZlLg0KDQo+IA0KPiA+IFRoaXMgcGF0Y2ggaGVscCB0byByZWR1Y2UgdGhlIGxh
dGVuY3kgZm9yIGVhY2ggb2YgdGhlIGxpbmsgc3BlZWQuDQo+IA0KPiBoZWxwKnMqDQoNCk5vdGVk
LiBXaWxsIHVwZGF0ZSB0aGlzLg0KDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbmljaXVzIENv
c3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
TXVoYW1tYWQgSHVzYWluaSBadWxraWZsaQ0KPiA+IDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxp
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfZGVmaW5lcy5oIHwgIDYgKysrKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19tYWluLmMgICAgfCAgNiArKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaCAgICB8ICAxICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMgICAgIHwgMzAgKysrKysrKysrKysrKysrKysrKysNCj4g
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmggICAgIHwgIDEgKw0K
PiA+ICAgNSBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgNCj4gPiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oDQo+ID4gaW5kZXgg
NGY5ZDdmMDEzYTk1Li40NmRlMWRjMjZlZjAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmgNCj4gPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaA0KPiA+IEBAIC00MDAsNiArNDAwLDEyIEBA
DQo+ID4gICAjZGVmaW5lIElHQ19EVFhNWFBLVFNaX1RTTgkweDE5IC8qIDE2MDAgYnl0ZXMgb2Yg
bWF4IFRYIERNQQ0KPiBwYWNrZXQgc2l6ZSAqLw0KPiA+ICAgI2RlZmluZSBJR0NfRFRYTVhQS1RT
Wl9ERUZBVUxUCTB4OTggLyogOTcyOC1ieXRlIEp1bWJvIGZyYW1lcyAqLw0KPiA+DQo+ID4gKy8q
IFRyYW5zbWl0IFNjaGVkdWxpbmcgTGF0ZW5jeSAqLw0KPiA+ICsjZGVmaW5lIElHQ19UWE9GRlNF
VF9TUEVFRF8xMAkweDAwMDAzNEJDDQo+ID4gKyNkZWZpbmUgSUdDX1RYT0ZGU0VUX1NQRUVEXzEw
MAkweDAwMDAwNTc4DQo+ID4gKyNkZWZpbmUgSUdDX1RYT0ZGU0VUX1NQRUVEXzEwMDAJMHgwMDAw
MDEyQw0KPiA+ICsjZGVmaW5lIElHQ19UWE9GRlNFVF9TUEVFRF8yNTAwCTB4MDAwMDA1NzgNCj4g
PiArDQo+IA0KPiBMYXRlbmN5IHNvdW5kcyBsaWtlIGEgdGltZSB2YWx1ZS4gQ2FuIGEgdW5pdCBi
ZSBhZGRlZCB0byB0aGUgbWFjcm9zPw0KPiBNYXliZSBhZGQgYXMgYSBjb21tZW50LCB3aGF0IGxh
dGVuY3kgaXQgYWN0dWFsbHkgaXMuDQoNCldpbGwgYWRkIHRoZSBjb21tZW50IGxpa2UgdGhpcyAi
TGF0ZW5jeSBiZXR3ZWVuIHRyYW5zbWlzc2lvbiBzY2hlZHVsaW5nIChsYXVuY2ggdGltZSkgYW5k
IHRoZSB0aW1lIA0KdGhlIHBhY2tldCBpcyB0cmFuc21pdHRlZCB0byB0aGUgbmV0d29yayBpbiBO
YW5vIFNlY29uZHMiLiBXaWxsIHJlbWFpbiB0aGUgbWFjcm9zIGFzIGl0IGlzIGlmIHBvc3NpYmxl
IA0Kd2l0aG91dCB0aGUgdW5pdC4NCg0KPiANCj4gPiAgIC8qIFRpbWUgU3luYyBJbnRlcnJ1cHQg
Q2F1c2VzICovDQo+ID4gICAjZGVmaW5lIElHQ19UU0lDUl9TWVNfV1JBUAlCSVQoMCkgLyogU1lT
VElNIFdyYXAgYXJvdW5kLiAqLw0KPiA+ICAgI2RlZmluZSBJR0NfVFNJQ1JfVFhUUwkJQklUKDEp
IC8qIFRyYW5zbWl0IFRpbWVzdGFtcC4gKi8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ID4gaW5kZXggYmY2YzQ2MWUxYTJhLi43MGUwYWU3Zjk5
ZDkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4u
Yw0KPiA+IEBAIC01MzgyLDYgKzUzODIsMTIgQEAgc3RhdGljIHZvaWQgaWdjX3dhdGNoZG9nX3Rh
c2soc3RydWN0DQo+IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICAgCQkJCWJyZWFrOw0KPiA+ICAg
CQkJfQ0KPiA+DQo+ID4gKwkJCS8qIE9uY2UgdGhlIGxhdW5jaCB0aW1lIGhhcyBiZWVuIHNldCBv
biB0aGUgd2lyZSwNCj4gdGhlcmUgaXMgYSBkZWxheQ0KPiA+ICsJCQkgKiBiZWZvcmUgdGhlIGxp
bmsgc3BlZWQgY2FuIGJlIGRldGVybWluZWQgYmFzZWQgb24NCj4gbGluayB1cCBhY3Rpdml0eS4N
Cj4gDQo+IGxpbmstdXAgb3IgbGlua3VwPw0KDQpXaWxsIGNoYW5nZSB0byBsaW5rLXVwLiBUaGFu
a3MhDQoNCj4gDQo+ID4gKwkJCSAqIFdyaXRlIGludG8gdGhlIHJlZ2lzdGVyIGFzIHNvb24gYXMg
d2Uga25vdyB0aGUNCj4gY29ycmVjdCBsaW5rIHNwZWVkLg0KPiA+ICsJCQkgKi8NCj4gPiArCQkJ
aWdjX3Rzbl9hZGp1c3RfdHh0aW1lX29mZnNldChhZGFwdGVyKTsNCj4gPiArDQo+ID4gICAJCQlp
ZiAoYWRhcHRlci0+bGlua19zcGVlZCAhPSBTUEVFRF8xMDAwKQ0KPiA+ICAgCQkJCWdvdG8gbm9f
d2FpdDsNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX3JlZ3MuaA0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19y
ZWdzLmgNCj4gPiBpbmRleCBjMGQ4MjE0MTQ4ZDEuLjAxYzg2ZDM2ODU2ZCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3JlZ3MuaA0KPiA+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcmVncy5oDQo+ID4gQEAgLTIyNCw2
ICsyMjQsNyBAQA0KPiA+ICAgLyogVHJhbnNtaXQgU2NoZWR1bGluZyBSZWdpc3RlcnMgKi8NCj4g
PiAgICNkZWZpbmUgSUdDX1RRQVZDVFJMCQkweDM1NzANCj4gPiAgICNkZWZpbmUgSUdDX1RYUUNU
TChfbikJCSgweDMzNDQgKyAweDQgKiAoX24pKQ0KPiA+ICsjZGVmaW5lIElHQ19HVFhPRkZTRVQJ
CTB4MzMxMA0KPiA+ICAgI2RlZmluZSBJR0NfQkFTRVRfTAkJMHgzMzE0DQo+ID4gICAjZGVmaW5l
IElHQ19CQVNFVF9ICQkweDMzMTgNCj4gPiAgICNkZWZpbmUgSUdDX1FCVkNZQ0xFVAkJMHgzMzFD
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNu
LmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMNCj4gPiBp
bmRleCAwZmNlMjJkZTJhYjguLmY5NzVlZDgwN2RhMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY190c24uYw0KPiA+IEBAIC00OCw2ICs0OCwzNSBAQCBzdGF0
aWMgdW5zaWduZWQgaW50IGlnY190c25fbmV3X2ZsYWdzKHN0cnVjdA0KPiBpZ2NfYWRhcHRlciAq
YWRhcHRlcikNCj4gPiAgIAlyZXR1cm4gbmV3X2ZsYWdzOw0KPiA+ICAgfQ0KPiA+DQo+ID4gK3Zv
aWQgaWdjX3Rzbl9hZGp1c3RfdHh0aW1lX29mZnNldChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0
ZXIpIHsNCj4gPiArCXN0cnVjdCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiA+ICsJdTE2
IHR4b2Zmc2V0Ow0KPiA+ICsNCj4gPiArCWlmICghaXNfYW55X2xhdW5jaHRpbWUoYWRhcHRlcikp
DQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCXN3aXRjaCAoYWRhcHRlci0+bGlua19zcGVl
ZCkgew0KPiA+ICsJY2FzZSBTUEVFRF8xMDoNCj4gPiArCQl0eG9mZnNldCA9IElHQ19UWE9GRlNF
VF9TUEVFRF8xMDsNCj4gPiArCQlicmVhazsNCj4gPiArCWNhc2UgU1BFRURfMTAwOg0KPiA+ICsJ
CXR4b2Zmc2V0ID0gSUdDX1RYT0ZGU0VUX1NQRUVEXzEwMDsNCj4gPiArCQlicmVhazsNCj4gPiAr
CWNhc2UgU1BFRURfMTAwMDoNCj4gPiArCQl0eG9mZnNldCA9IElHQ19UWE9GRlNFVF9TUEVFRF8x
MDAwOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJY2FzZSBTUEVFRF8yNTAwOg0KPiA+ICsJCXR4b2Zm
c2V0ID0gSUdDX1RYT0ZGU0VUX1NQRUVEXzI1MDA7DQo+ID4gKwkJYnJlYWs7DQo+ID4gKwlkZWZh
dWx0Og0KPiA+ICsJCXR4b2Zmc2V0ID0gMDsNCj4gPiArCQlicmVhazsNCj4gPiArCX0NCj4gPiAr
DQo+ID4gKwl3cjMyKElHQ19HVFhPRkZTRVQsIHR4b2Zmc2V0KTsNCj4gDQo+IFNob3VsZG7igJl0
IHR4b2Zmc2V0IGJlIHUzMiB0aGVuPw0KDQpJIGFjY2lkZW50YWxseSByZXBsaWVkIDIgbWVzc2Fn
ZSBwcmV2aW91c2x5LiBUeG9mZnNldCBzaG91bGQgYmUgMTYgYml0IG9ubHkuIA0KVGhhdCBpcyB0
aGUgcmVhc29uIEkgdXNlZCB1MTYuDQoNCj4gDQo+ID4gK30NCj4gPiArDQo+ID4gICAvKiBSZXR1
cm5zIHRoZSBUU04gc3BlY2lmaWMgcmVnaXN0ZXJzIHRvIHRoZWlyIGRlZmF1bHQgdmFsdWVzIGFm
dGVyDQo+ID4gICAgKiB0aGUgYWRhcHRlciBpcyByZXNldC4NCj4gPiAgICAqLw0KPiA+IEBAIC01
Nyw2ICs4Niw3IEBAIHN0YXRpYyBpbnQgaWdjX3Rzbl9kaXNhYmxlX29mZmxvYWQoc3RydWN0IGln
Y19hZGFwdGVyDQo+ICphZGFwdGVyKQ0KPiA+ICAgCXUzMiB0cWF2Y3RybDsNCj4gPiAgIAlpbnQg
aTsNCj4gPg0KPiA+ICsJd3IzMihJR0NfR1RYT0ZGU0VULCAwKTsNCj4gPiAgIAl3cjMyKElHQ19U
WFBCUywgSTIyNV9UWFBCU0laRV9ERUZBVUxUKTsNCj4gPiAgIAl3cjMyKElHQ19EVFhNWFBLVFNa
LCBJR0NfRFRYTVhQS1RTWl9ERUZBVUxUKTsNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5oDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5oDQo+ID4gaW5kZXggMTUxMjMwN2Y1YTUyLi5iNTNlNmFm
NTYwYjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y190c24uaA0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNu
LmgNCj4gPiBAQCAtNiw1ICs2LDYgQEANCj4gPg0KPiA+ICAgaW50IGlnY190c25fb2ZmbG9hZF9h
cHBseShzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpOw0KPiA+ICAgaW50IGlnY190c25fcmVz
ZXQoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyKTsNCj4gPiArdm9pZCBpZ2NfdHNuX2FkanVz
dF90eHRpbWVfb2Zmc2V0KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcik7DQo+ID4NCj4gPiAg
ICNlbmRpZiAvKiBfSUdDX0JBU0VfSCAqLw0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+
IFBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
