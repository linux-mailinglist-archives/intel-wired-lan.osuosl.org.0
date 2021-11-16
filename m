Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AC4453456
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 15:37:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B27240437;
	Tue, 16 Nov 2021 14:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IhauA4fp5sd5; Tue, 16 Nov 2021 14:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0931D4040E;
	Tue, 16 Nov 2021 14:37:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF5261BF378
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 14:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB3DF80F43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 14:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d3Cdn0CLnmL1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 14:37:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9E4380F3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 14:37:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="257459807"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="257459807"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 06:37:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="592707586"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2021 06:37:15 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 06:37:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 06:37:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 16 Nov 2021 06:37:14 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 16 Nov 2021 06:37:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxvTnEi9IfJHWnVRzjUwnKSN/LpQpzeblWVG7+4CdjXJQjXiD9MMoLqaKqSy6uBv7tYrJPHM7vxtkbieYiN5IH76+tpcsrDZXzjycabBYW0dUDwKgKLOaGAbEkKO0C++waN4iqWRWLWqoo9aQrLbydzy+bwD8j52Oll5qSanB2wjFedNv4lNZ8uPegyjd6WZqR+Z93jdSq36WGXFQDuP1aMQu6KB3O0ldxhBLTfppmRDwip12dPEFTTwfdIQiByC2KTMZkZ/DfF67su1OsG4HmS65eqBnNHBlwy7V8Fe1bWYLLNlYOeVZrrQRJNLlIdzWVV0Weq29MylEGmQTjaJcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/s4w977s1eMQYNb52T+vCb6/viGUmhv6wCsMYVdJBTk=;
 b=d6liEFiOGgD8rDJqpyapkOc15r9xZtwMzaz9wf/7eiz4cALf5WJrBSS5v9/SdFAJm+rjoFSajl98YROAZXVjIa/cdBMDfEheZGFV1e+5PosCQbEBKWIsUSIaYHEKTIT7vruA0OBfAbXwtUq7MR/G0FeEWbGl58g2cCJwiy/WlzxeT2+QO6zDPNYS2gF6uO2VIWw1ETTq5mJLaWSudXSdJXrFuZIrHKQJmUbPi1nKaQm5kZJhV3U1Dx/arsHYiY6vct8OB7mqSFUXZ7csGOpuNkq1qXb0/gWO115e56c9dTeJvWonRIcIz9X2tfmpqxNUlK6JPMDXHmb3gA1HqPJjrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/s4w977s1eMQYNb52T+vCb6/viGUmhv6wCsMYVdJBTk=;
 b=E/Cu+JggT5sq+aht5L/6fYAxZ/Q6VHXrlS+GvblyceLENYWjnchI9NvxC6rX9qXqRne7hD/fQAtFdRkD6/6CbQ8WzG78VjEv004fv+QdZwLWqeymQr+cHo/P6IM4I90AtXow9ygk3U1RpYosESWj0K4anoa/MPRsiNdHjjjv/iA=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MWHPR11MB1727.namprd11.prod.outlook.com (2603:10b6:300:1f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.27; Tue, 16 Nov
 2021 14:37:13 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9%7]) with mapi id 15.20.4690.027; Tue, 16 Nov 2021
 14:37:13 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Sabrina Dubroca <sd@queasysnail.net>
Thread-Topic: [PATCH v3 net-next 2/6] rtnetlink: Add new RTM_GETEECSTATE
 message to get SyncE status
Thread-Index: AQHX1iqA5RlGiTEzKkqK25dIf+5Hpav+flEAgAfCi9A=
Date: Tue, 16 Nov 2021 14:37:13 +0000
Message-ID: <MW5PR11MB581243EFB3A84BD2912ACBF8EA999@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
 <20211110114448.2792314-3-maciej.machnikowski@intel.com>
 <YY0+PmNU4MSGfgqA@hog>
In-Reply-To: <YY0+PmNU4MSGfgqA@hog>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6822d038-4bbf-41b1-6c95-08d9a90e9476
x-ms-traffictypediagnostic: MWHPR11MB1727:
x-microsoft-antispam-prvs: <MWHPR11MB1727D2C2A4B5BDD260F606B6EA999@MWHPR11MB1727.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h0WETBY+YimkYkPHQJmLgH27t2cmcyWW9mKQM3lb2/kwvVYWemuJfSmeirhoJcm4P02r5bOHiwshJjnd4t4gGO/ytDBynhz7AkcLVqCYnIvvdwDed06oB4alte+y9TUXocVEbmZKKUk16MsnZEBuTc578PSxVkxZCMPriqZuNxO+5dG7JnfDhP9CZvSPjWH0s0QyS6PGlkkUaVkf55nmaUFGbtjRJF8gC2zCgl9KXyXaI+jhqppfcntxc36hDrDb5mRIh8aw/V06EU6lIWuLJSp9ssPZJBnVycUvNNgjBBn3NmLDIhukSk5YclydI3hAqk5vUhlEfkrHCNXAQHNsPDtBHfYTRDA6To/eO8R/Q1T76olvs0Z3myUVbYMh0C0VEP+C46BIVZfxrGuNLcK2jFmoIZbywuLRtgLz/VhebhjgAhvXbTXPNvw2EuAS6P3PyqHNItUa+YtfgsfyLGHHI6UP1V6J/Ky4w1QSbMeswfh7+F/H/VsrtmTm7cT5LZLMraIEbYr+HTd/2Ut6vnl4dV8Fp8+v3+7ndi8UZadw18vSfwsT13/YpIktTKx5ajn+fhWZoN46o4GZ74s4KjCLvot4adrpmSAuum/9td9oowhSkJUBMPMnj4etHfdGtroTtjxtXndfr7cR5zlQHzjx8G337txAAa7QjDEU5zJvemHP1tcSfhujKKXNPN5LWHuBZMTKXlokvifBtPtHfUEzCQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(2906002)(54906003)(66446008)(53546011)(7416002)(6506007)(86362001)(5660300002)(38070700005)(508600001)(122000001)(83380400001)(8936002)(38100700002)(7696005)(8676002)(15650500001)(33656002)(26005)(52536014)(66476007)(66556008)(64756008)(71200400001)(66946007)(55016002)(76116006)(316002)(4001150100001)(186003)(6916009)(82960400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmV2d0JFS3d0ZzhyUldOQTF0aVVLdFowaWVVbmM2WXhXUEtQMmIvTXNlNHVV?=
 =?utf-8?B?dm1Gd0RRNm1PdnBuK2c0QmEzUFdkTlZaYW0reVhwMW9qbGthWHBFNzBKcHMz?=
 =?utf-8?B?cDU1T3M1RktNM2toM3ZlRHZ4a0ZyT29SYXNndkVEclJKeWJOaXE5Wk85clhN?=
 =?utf-8?B?VUV5cDV5NTJKdWZ3SEN5UllXM0M1ZS9LVVR0OW9SOGt1cDcxdklzY1pnUUc1?=
 =?utf-8?B?WWNmbFBDVk92T3NyaWU5Mk1EL01DRUVDOEJOOU9rMWdXUnIzcjRvOXdxVy9R?=
 =?utf-8?B?WFdzRUt4TWt5YyttN0RqWGs4SU05ZmdaU05oMVBXOVY4V25qaW95Vlc2UDJF?=
 =?utf-8?B?MkR1ZnhFQldSRThZN0JQS1VodlFQV0RnQ0MzTGdkdmNXN2tmS3JqRlFpOFAy?=
 =?utf-8?B?NnY4UnFtc0tyVnc0K054Z2RqMzNwK1BRMFoyaG5XNXlJZW5xNlI2Wld0Rllk?=
 =?utf-8?B?aUdQbmVrajdiaklMRTAwSThkMVNRYWRLTnNrRmJzbVRHeWFlYmpGUDRyaHJm?=
 =?utf-8?B?NDNySjMrajlWRmVQTllVM0FJYUVLYkFzYTY2T2gxV251b1NqQWRwdGp3M1Vm?=
 =?utf-8?B?eWoyUGUxWWpFUUhOemZyK3RWZWNSYytuN04xNDQrSlNBK3VKQzZ2eHdoTCti?=
 =?utf-8?B?RW11WHpvV056Q0MrckxwbHF5akIvZlRzd25sNkZIRzhUQnZnRW9RME1xSVU2?=
 =?utf-8?B?MzRGR2kzbkhBV1RZRGlvS2tYckt6cjZCV1BBRjBIYzJiTFBxS1JDYmpDQklH?=
 =?utf-8?B?dEY4QitqNHI5ZXpQVlFBRUkwVkhDNUJmZHIwZUJzQnJoNTJITXlxSU03djVo?=
 =?utf-8?B?cGFBRWxEci9nOXFzc0s2STFIUE9FTllsdGZFd2ViZGhPNDAxNkVIbHVqTU83?=
 =?utf-8?B?WmJkTzVLalg2c093U3RNWUliODNnUnpjUm92ZkJQZEZSdmR0SlM4Vm9TZEtD?=
 =?utf-8?B?amptclVzc1FBZnNkNDd6UDkxdkFGMmUvdE9UTllFSFcySGFQbVo0NmNkMkU2?=
 =?utf-8?B?T3I3OUtMMjdLTkNlT2lXMk5WbFl6QVd0OThVdStEL1JhSG83WEhTT0NDVmFR?=
 =?utf-8?B?RkdmYVRZSkw2d1Z3QXoxYStXbUdHV1FRYUwyNHRNR0JyUnlLTGNSNzU3LzBZ?=
 =?utf-8?B?bVRhdXhheTFnWncxdVg2VitwdE1aWSt1bU1GZld6U29GUXlNYXB3ZG9ObURM?=
 =?utf-8?B?SDRyY3h2bHo5cTZNWGJ0RUFEOWNJVElIdHJybnlvbVpVZXZQeERzU0pGVlZL?=
 =?utf-8?B?ckFVTGhaNlhzeWZsTGRnZWx2RE52MDY3b3V3cE8xQTdhZkdud1BiclVuQ2cx?=
 =?utf-8?B?dU1PZ3hUSDRFaUNuWWZTSisrdmFRQVZDYkM0QVpTWVVmUDRCMlRjY1g3SEQw?=
 =?utf-8?B?TkVNNDk1ekNXL0ZEM25iYlNjallFY2ZKUHhIUXY1TUdyaDJlTCtqWkZBWEZ6?=
 =?utf-8?B?d1ZJMytvUUg5N1RKdHpXWC9JVzJQQ01ROXJYVHdGc2FNTDcwN3lkNXg5SGt6?=
 =?utf-8?B?UHcwcGpTV2ZRUTZBOElkRnFMRmxJb2hVZmhBNkRUcUJ1V0E5eGZuL3RjaWQ4?=
 =?utf-8?B?emNmck1yTDFQM3M1R1ZSSExLN21FWUljN0tDZUVCMGk1cWZFaXp1T28xQ2FJ?=
 =?utf-8?B?bHRHU2Fhd0Y1ZUgvQVVMT1k5VnFNWkNkeCttMzBObThxUzl4ZTZBWFlaZjQv?=
 =?utf-8?B?NzhXalJZQ0NQWTlBNDhVRkRKUXF4WU0xQ3prVnpjNVRNUms5TW02dGQ3YU1L?=
 =?utf-8?B?ZStzUDMwOFhTQjQ4dnQ5Vm5Ia3cvaUZEOE5ncGJGakYzdWg0MUdweDh6dFNz?=
 =?utf-8?B?VWk2OGRlVDdnSFRzU0c1N20yUGRzdE5WM085Z2U3NVFpK2E4TVhSUllMK0Nk?=
 =?utf-8?B?bWpJSlZNUERqajZMV0NaN1pMZ3BBWlVvMjBsSUt2TEFmSmdTam5IZkg3Misw?=
 =?utf-8?B?eC80c0tWOXlOczNYbktrSTVDa2NhbHd1QU9oRXVoK1d6blJSN1UrbnliYzBU?=
 =?utf-8?B?c1dNeUdWUU54MS9zM1hkWDlZT2xLaUNoQXp6OGdvZDFlL0dmTUY0QkJjSURL?=
 =?utf-8?B?RFl3OVI1eTM0UVdWN2VZM0JEcXhIOE42WWZSeXZFU2tyVytLeS9RQ012WHhn?=
 =?utf-8?B?clVyTjVPUm9OcytzRTd3WnZ3SWI3VXBzdWJ1OU4zakZhNDdQdkxCZUszT3Zl?=
 =?utf-8?B?NXdnQXdkY2lmK1BJeXFDVUdlS0RKSStONGZabkZzUWV0Sy9jR0w0UXBMWjhR?=
 =?utf-8?B?TUhJNUJwNUJ3TS9GV0hWTkFGbmRnPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6822d038-4bbf-41b1-6c95-08d9a90e9476
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2021 14:37:13.3697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o4pyIsRzzJD2qEOP+fhh1ZgrYyjZF1r1GzDdkgYoOWM7QagQi2PjFLn6MjCa+LJlY3dgnlz+aObBHMegs2VMBPunLxgpE8L8TNU3pF3BBm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1727
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 2/6] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Sabrina Dubroca <sd@queasysnail.net>
> Sent: Thursday, November 11, 2021 5:01 PM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: Re: [PATCH v3 net-next 2/6] rtnetlink: Add new RTM_GETEECSTATE
> message to get SyncE status
> 
> Hello Maciej,
> 
> 2021-11-10, 12:44:44 +0100, Maciej Machnikowski wrote:
> > diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
> > index 5888492a5257..1d8662afd6bd 100644
> > --- a/include/uapi/linux/rtnetlink.h
> > +++ b/include/uapi/linux/rtnetlink.h
> > @@ -185,6 +185,9 @@ enum {
> >  	RTM_GETNEXTHOPBUCKET,
> >  #define RTM_GETNEXTHOPBUCKET	RTM_GETNEXTHOPBUCKET
> >
> > +	RTM_GETEECSTATE = 124,
> > +#define RTM_GETEECSTATE	RTM_GETEECSTATE
> 
> I'm not sure about this. All the other RTM_GETxxx are such that
> RTM_GETxxx % 4 == 2. Following the current pattern, 124 should be
> reserved for RTM_NEWxxx, and RTM_GETEECSTATE would be 126.
> 
> Also, why are you leaving a gap (which you end up filling in patch
> 4/6)?

Hmmm I missed that - is there any guide how to number them?
I'd be happy to follow the pattern there - will fix in next revision.

The gap is there as this was developed first - but most likely this part
Will be removed in next revision in favor of DPLL subsystem.

> > +
> >  	__RTM_MAX,
> >  #define RTM_MAX		(((__RTM_MAX + 3) & ~3) - 1)
> >  };
> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > index 2af8aeeadadf..03bc773d0e69 100644
> > --- a/net/core/rtnetlink.c
> > +++ b/net/core/rtnetlink.c
> > @@ -5467,6 +5467,83 @@ static int rtnl_stats_dump(struct sk_buff *skb,
> struct netlink_callback *cb)
> >  	return skb->len;
> >  }
> >
> > +static int rtnl_fill_eec_state(struct sk_buff *skb, struct net_device *dev,
> > +			       u32 portid, u32 seq, struct netlink_callback *cb,
> > +			       int flags, struct netlink_ext_ack *extack)
> > +{
> [...]
> > +	nlh = nlmsg_put(skb, portid, seq, RTM_GETEECSTATE,
> sizeof(*state_msg),
> > +			flags);
> > +	if (!nlh)
> > +		return -EMSGSIZE;
> > +
> > +	state_msg = nlmsg_data(nlh);
> > +	state_msg->ifindex = dev->ifindex;
> 
> Why stuff this in a struct instead of using an attribute?

Since it's the required parameter to identify what port is in question.
 
> > +
> > +	if (nla_put_u32(skb, IFLA_EEC_STATE, state))
> > +		return -EMSGSIZE;
> > +
> > +	if (!ops->ndo_get_eec_src)
> > +		goto end_msg;
> > +
> > +	err = ops->ndo_get_eec_src(dev, &src_idx, extack);
> > +	if (err)
> > +		return err;
> > +
> > +	if (nla_put_u32(skb, IFLA_EEC_SRC_IDX, src_idx))
> > +		return -EMSGSIZE;
> > +
> > +end_msg:
> > +	nlmsg_end(skb, nlh);
> > +	return 0;
> > +}
> > +
> 
> Thanks,
> 
> --
> Sabrina

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
