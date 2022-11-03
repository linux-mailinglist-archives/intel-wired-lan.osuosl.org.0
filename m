Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D5A619C46
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 16:55:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72AFF40235;
	Fri,  4 Nov 2022 15:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72AFF40235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667577353;
	bh=V/zMZFRQ8j9/eL4FNg+xg53eZEU82biSOROT6XHErEo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6FqCMJo7CXdVhjjs/ChAwEPJc0ZcPPu17DRy41KXpDhUF/LuP4UyaoSDgScw1yIWg
	 GwadRB5pOtoLn7GtnvQF4cTgPNT13jZR5RWtafPmdujZOu5msTFOWR47PcMA3HPCn+
	 v4mG8pqcEvM1RAOPlMG+qi49peOoy6RN7RRNKPDSOAQiXFIJ+iGMJFSMat8P5QPNyQ
	 wb8203IkpJ2ZXThEy08li1dBmbkgwFBWkjLI9kx5Hugdzf1RL+dxrTs/h77iwgvbwL
	 61GdMjwHqlW+ebIagnnbUUR5bS6GDpxOi9GbnL3/qE0UXtaGYA3j21wwi3mZ1dnuPN
	 oMzQzO5IYuH0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHtMAfRs9IRO; Fri,  4 Nov 2022 15:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2487E40C73;
	Fri,  4 Nov 2022 15:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2487E40C73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 611101BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47CA581EE1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47CA581EE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uIEASzdIkAnR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:50:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E59081ED6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E59081ED6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:50:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="309794898"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="309794898"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:50:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="634823693"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="634823693"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 03 Nov 2022 13:50:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:50:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:50:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:50:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3dFdjq3Ku2zV3Jm6wKTGHwAoHAp/VYTypeEi0dSZbRK78wI+9CrqTjdleRjWNW/dt+KIUgyL+ZVYojBQqs04J6iW0A8He7zqrlDupUrA/+xPO6pOaC/d+x5jnCrZMdMY0BiI3NHdN178l4RmEItQnT9M2O/PhUEnr6tu1fAs/P1ARWcsLMOxfHc4uJDFAu5+s87mXFXJKXPcv1rvXjgVHqAXuWRtrrRo7cJnGckPTvsIsaO04SO+ywqTx7EqeHdC6tZ/09WKIynBamCtwTjUX154mnQWgaFppnKel5umq72h7GwJqiZtOxEOnyd6Fd51Ef5uqIAvPJow0eUPrqg1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RPUsDcBmU2AEhlyXIkkfzt/qr4UNeoNm3g9Twih5Hpc=;
 b=Vo7Ta27NunxNDRMhg8W+h5SyC8O/O39ehmvbv8bBDU86l7KLE9w/LIcwDomnK3HOcCMcK8U/mYhycMriXRSa4BXaU1PgQvvhzTnZF4KY6fKZlr5ptlL+fV7Psga1+G6e/l9G3bPxj1s2jwNgt+a10ZO98kHfthoN1MdtNDHJUze+GLFnpE2g0M60qzDOVDjt9L3M5TtniZ+HyfEi4ENf3sJ8acU6tP1/ow6TD+cLjpekoGQfNmDij1EU3m7vqg4LlelHIGWKNjMkGSlXUQM1mpQUMl9QwwvhlbHANXie26fNpOH/bQkwJPo5upXWRkTDBEd9Rc2ZUOU6esxQp+6htw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 by SJ0PR11MB5021.namprd11.prod.outlook.com (2603:10b6:a03:2dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 20:50:23 +0000
Received: from MW3PR11MB4681.namprd11.prod.outlook.com
 ([fe80::d221:ba03:36d2:f160]) by MW3PR11MB4681.namprd11.prod.outlook.com
 ([fe80::d221:ba03:36d2:f160%7]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:50:23 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
Thread-Index: AQHY7kTBlXgCe/e5yk6nSI3ppi+voq4trY4AgAABLWA=
Date: Thu, 3 Nov 2022 20:50:23 +0000
Message-ID: <MW3PR11MB46815510BD160838E67F8DC980389@MW3PR11MB4681.namprd11.prod.outlook.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-2-jacob.e.keller@intel.com>
 <16f5979a-0df0-0f21-0654-72d8791a0a76@intel.com>
In-Reply-To: <16f5979a-0df0-0f21-0654-72d8791a0a76@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4681:EE_|SJ0PR11MB5021:EE_
x-ms-office365-filtering-correlation-id: aa4d16b8-0663-4f75-e9de-08dabddd076a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yv1RIYYL3x9b4c3An9ffip+LsBsYPJg2AnLcYWFnW/K/NGNjz09AhmCCNHscnjXD9e4hK1Y9RPHygp60jVcH0dCBcoMw9pNx27K/2ToghslBnd4d9SFv3ev13oVX3HeDumxYyqkCheMLUjrMREq3FsYm5kcKfSgnepOQOkAgAz/p0fVWQK92fWborUFCc11yHZOgzM9LUE8z3DeAgnVMSBZ8Hz9+vbDTZiOM46uVUHyLr0A+yexi6wtRVU2CNOnFxjg3HrQmrWUSKLzxobAmIlZY5g6DhPNO1dAyCh6OFXKK8Q3g4BLmISB2ENj/3xtJtsvYTTlpf7QHAfLpV/XlC9vJr266KBgmnLPRSBDrjQ0oKh0zkbW32EAEhCKPoQp3olTqrWV48ylraUotolMX64C9GpEHcmtQyew2YEFHULD+PD9WNpCugzvkIMk9eydGW6fk++bQebDMiiXM/yBDu+9Zm6QLTPHPpWHYUeReKgIXIzxHjBsVKAoEJisBSSFedds5N6Y0B1CBWCokHQ7aJscQgDB4p47muuFpD2rcSbpDTe4t8z5SWT6sANBmsqncn7JxZM6Bm8SpxlkM3oyxnmj80Jq2qVIFJIz2C6VDyQu93OXxgKgcPtWBKV8iC4EZduUwIIcx2DN96mG0gl8BQbHGD5FCGq+9lcWcdc/5LxCx4dycR18zNgc6QhLo3JrIOykS9DkGcpRiuO2zsXVoyaxX4KSJXPYFF9pp/oj/e9zDMsob9dG6DD5QIcEW/6C7zhGiF9dDyt1GG4zJDOCM7nMQ87j/9y/ruxm4hcHU/mo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4681.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199015)(38100700002)(64756008)(66476007)(66556008)(8676002)(66446008)(76116006)(66946007)(8936002)(41300700001)(71200400001)(110136005)(316002)(82960400001)(122000001)(52536014)(2906002)(6506007)(53546011)(7696005)(9686003)(26005)(478600001)(4744005)(83380400001)(55016003)(186003)(33656002)(5660300002)(86362001)(38070700005)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFZYc1J0a2dDUTQyK1hmUkZ1VzZUVFhOMy8zVGhVY09kWjd0Vk9NQlBhOGM4?=
 =?utf-8?B?WW5aQTdQU0NDYXprcFhydGFIQW5xa05GdlVpOWoyRzBycDlQd3RMdm5URzBz?=
 =?utf-8?B?V2xCNUNEVkJIMEd6YVFtMUlnZjVReW16OTdrQXkyajZzUUp2OVdaNmZqNTU4?=
 =?utf-8?B?MXhKZlhqNmV4QUZEUDZKY3hJQ2h6Y0NCNm9qR2wzUllOWm1yTjA5SDdxOURS?=
 =?utf-8?B?Y3JhdFovMFZVZElXWlVvRHBOQUtWUWxIeGVIUzNFSWNHY2tQQ0ZCYXNpSlJs?=
 =?utf-8?B?clF6amN5cGV1TE9NOHRUa25YZGVLelpaM0UvVDJvdnhabjR6eERDdUxpd0xz?=
 =?utf-8?B?TmtvVDAxSmQ1RFFnVzhoN1k5NUhLWlVqVUZRclQxdGxMV25QTmJLR0I4ZWJ2?=
 =?utf-8?B?STFtOXhWWSt4V2xyRVdIZmNzOGFIS1oxRTdwSVdOTEIwelRnUzBCRmZNRnBD?=
 =?utf-8?B?M2V6Rm85ZE1JczFUY09HN2ZvcTFBc3o0d1hBZFZBdzJydFE5VFB3YmgrSDdW?=
 =?utf-8?B?bDhpR1ZlV2Q2VTZTTVBvL2xoMDVaMllEK1JhQmhocGpqNTFBMGNBdi8yTUVp?=
 =?utf-8?B?Mm1iUEdTVFkxU2VIcVVmbGExYWhQQVR1ZnZzbElhbnowcS82TmRTdnNscGpP?=
 =?utf-8?B?Q1RxdFpZSVNRQWV3cFFVVk9DWXl6YklZMzZXZHd4bVJFdWVuUWFKKzB3ZEIy?=
 =?utf-8?B?RmkweHJpNWx1TnJxcFY3RmdaMHdjbzVZMUoxb1BOcjFLQi8vMXR2OFpvOXk2?=
 =?utf-8?B?S0ozOW5NSVVpR21NQWtpaDlGOEh6cXcwWHZUWTNaRDUwWXhRSlNnYTI5Vmdr?=
 =?utf-8?B?SWdqYU5qNnQrUFRtZlRLM0xQeVVyWDR5VlJXUHYzR0labmo1U0NRLzU5Y1cx?=
 =?utf-8?B?ZTFxc3FYNlZ6c2JEWHYzSmRvNHRNazA1M1VESm5POVEvY09yOVA4Vk9HY3F2?=
 =?utf-8?B?blo0TjBoVTVyelIzY21Xc1BvVjY3ZFR0eHVZb2VPTUpvb25zRHJOSzJXVHAv?=
 =?utf-8?B?YXp5ZFhWUWlQWHZEeDdPeUFuNVVES0NEdUwxTldLTjFPWlRPNitZbElMdXcy?=
 =?utf-8?B?aTluZDNtaUh3cHZSWDhPTThFMnk2eE1WdWExSjQzZkNXVDMrRG5ibzQ5QmVw?=
 =?utf-8?B?K2VSeEYxbDlrcnpCMnZreDR4K0ZFT0dKa1h5Z1pFMDk3UWZTOEVXSzBvdmhK?=
 =?utf-8?B?Yi9YNU9qZS8rQTh5QzFlNFhQbm5SSG1ISzJzR0tzSElGb3oxRlBGNlJBTGhs?=
 =?utf-8?B?YUdHWUExU1FmNGEvUUpLTHB2Q3h4emtybDBUeFRlVlFmdlVtd3g1c3o1VUFl?=
 =?utf-8?B?OFZWT2dGUDh1SklZNm5hbVhqUTB0dlg2bFNBQURpRkpxNHU0a2ZvZ2UzdnR6?=
 =?utf-8?B?N1hSNmtwZFEwTmRiWjBIdDNmZEFxa20wVFVaRnlkcUt1dHFKdVJaM3A0U1NT?=
 =?utf-8?B?TmorWjRYdDJvb2ttVVEyeEtoRjlsUkdUVVBIeXRFYmdyR3dKakxyNUJoUFhi?=
 =?utf-8?B?YyszNUh0RWQ4YllmMnhYdys3WlhyTDhIdGN6Y1VONHY4L2RyRDBacUhER0Mr?=
 =?utf-8?B?OGdVcXV1VXg0ZjhyWi9JclYzMzlRZUFESkEyRFFkL0k2M1d5UnVLNFBBdUhk?=
 =?utf-8?B?NVV6VGZNUFJlbkphU0FRUXNoM1J5RnZUdXgrQ3dCN3NWTnBWamdPS1hOcXdk?=
 =?utf-8?B?Vi9FRFpSSGMzME0vdzd4MG9PTVhWT0V3aVpzeUo2Z0VGRU40aHUzTXZaRHQz?=
 =?utf-8?B?aUoxZURPVXVVZUQ4MlhaeSthcFRTdWNVZTh2THFHTTRkVWtUNW1zNDRzWHV2?=
 =?utf-8?B?UTZzWWsvNzhhdzBRanhVaDJWbytIREpRSHEvakJqcDlWTkt5ZHd4dXRFQjZi?=
 =?utf-8?B?YlVBc0xGc1diNDFZbFpsbXRHQ29FK1ZoN0QxR2VLd0QvMHFXMmN0Z1JFeGZw?=
 =?utf-8?B?bDdGV08zSVNFd0Z0TEI2Zzc2SlU4dFBDS2dtbzJMV1U0WHZQTjBrTCtnVyth?=
 =?utf-8?B?allWQThSNlU3dzlVVWhxdzhRNGZjeUdFVmRLcm93SWJWY09hZDdLTUVCUFVW?=
 =?utf-8?B?R3FrcDRmbGI4S0tSUjdKVEFDdU9HN0lYSHdsOUJiOTZjNnNMYzdlWjlOVEhM?=
 =?utf-8?B?MXB4RENCNGxSeFlQWDJ5YmwyMERCVFVSWXVCODQyWWJCZUZaR0lmUlY1VlRi?=
 =?utf-8?B?RlE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4681.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa4d16b8-0663-4f75-e9de-08dabddd076a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 20:50:23.6059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qf60JGyvAmA5wn9KpTfGH80jaD1fxUoOEgh7O3dZL0FWFxFCupl+fbtGxZ7IXXrQM9qP5jDh70OPx2TNVHTmazbkoGUFc0e4uhM9peTgET4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5021
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 04 Nov 2022 15:55:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508627; x=1699044627;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version:content-transfer-encoding;
 bh=2L1Mw/hVZIe4REejdb7fE4uokIVCM7coDC0YrcJIzec=;
 b=XEi1Un5de4V1dqSLWro2TMVWB4FT1bA7FM/ewhu6xxSxhPjSggVwMq8y
 PHOerI9RJi7eMgQJps5E1CdS6nNfdUTGcT+0gahLM0wqX8CT9pzE9405P
 70DzYue65lRtBjW1BEDU37HQ/Frl7zQ+lwBmMvQd5enLnybP0IiNa8S4M
 BcbNTwaUseyXUePHALa2+F1o0Y01dgTIdb4z4nFO50QlZGY7iI5g1fQA0
 cdNZdquF2Ru6uU/fRkYjiQ4RsF8ULlh9viKbngvppaGMbWM/T5bbf1WEM
 vWxUGPBxtzmxdYMOcJAEBlJ2ARPMCHSdRgyOhe0HsHmbJevL2B5oN/Sz7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XEi1Un5d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
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

We might want to move it to a different patch, it is used in ETH56G support code.

Regards,
Sergey

-----Original Message-----
From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Thursday, November 3, 2022 9:44 PM
To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic names for ice_ptp_tx fields

On 11/1/2022 3:52 PM, Jacob Keller wrote:

<snip>

> @@ -128,7 +128,9 @@ struct ice_ptp_tx {
>   
>   /* Quad and port information for initializing timestamp blocks */
>   #define INDEX_PER_QUAD			64
> -#define INDEX_PER_PORT			(INDEX_PER_QUAD / ICE_PORTS_PER_QUAD)
> +#define INDEX_PER_PORT_E822		16
> +#define INDEX_PER_PORT_E810		64
> +#define INDEX_PER_PORT_ETH56G		64

I believe this is an extra define (INDEX_PER_PORT_ETH56G)? I'm not seeing it used anywhere.

>   
>   /**
>    * struct ice_ptp_port - data used to initialize an external port 
> for PTP
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
