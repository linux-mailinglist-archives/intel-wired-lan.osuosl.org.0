Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161B6B6D64
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 03:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 458D060D5F;
	Mon, 13 Mar 2023 02:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 458D060D5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678673858;
	bh=Uu0V9X5X2Li9txCe+YxUbFEbYJcWxdscryjDQp8gLAU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F/4vsXmHE0oiHARKgcIXpHDomzPEZ21t2rARXgDlovGoA6i1P9gQXZmaFw65e8PWj
	 HnPHNLLS0NIfbBhps+KBxlC4FKpMlGE96bMvDM/e9U0ORWuIMaRt13rq5kAnUIcoB+
	 bOs1l3W9lRpAVt7yrCcq9L7gGVLOknWzL0n87zlstevUpX9ZTnbxPH29xV41YeT4VR
	 wwSFKH0KlxKqwKB4V+OAcb5ykgCuODsfNAPQNeybRHjHFIkJ3PDqrEThqG4KBiY8WD
	 aZnE8P2DCYtHkj/xzLQdAS6ZEhIaJBSDHQbG0P6NCSZ5rLRJp2hJcimK/Qv7u5nJFF
	 i99bDiO+qUJAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1PngbHkDFXGn; Mon, 13 Mar 2023 02:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C75360AE1;
	Mon, 13 Mar 2023 02:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C75360AE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C41FD1BF407
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 02:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BBA7402A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 02:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BBA7402A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rqeNCLKME1Qa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 02:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6748640285
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6748640285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 02:17:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="339414653"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; d="scan'208";a="339414653"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2023 19:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="1007817221"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; d="scan'208";a="1007817221"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 12 Mar 2023 19:17:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 12 Mar 2023 19:17:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 12 Mar 2023 19:17:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 12 Mar 2023 19:17:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 12 Mar 2023 19:17:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gdjyxisLTh39Oe2eM3LgeujSQ6AYyCXTmn36x+ILv0rhvGzcjVijIG29ZV/sI+Nsej/kUo6SGsIHN622lD/NlZCHwdYs1NFjahJlFXqyybnlmbkeGb+wf7HK36cSIWLC/nNne5KPTiph3xhqYwJtHZkVxoZd87jRBQU6YbJy2pZXosilgV/GlLx+CWCB5VGNA6BDpf7g6lTguP20CoSxZhPY8RL1Bzg1ddoF69UIz8Ffc85jcEQvu7vPajfwXvWqQq2fpinLl3QUYO6hwtOt6Eo6ECV6/zXTOQWNRDD88VfpJqAFGwxtxFQOPmHrJZ1TPSCao8lrgWssfq8wZNPSKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhZa58z5qLas3kcZCqwi+G4ykJUmKSl1bj/8UP1bPcM=;
 b=ke2tmQEC+1kVeEXkiI4IlX26C8f9XmRdg5J83dFtsggPzn9TeKK2i6Q0S5hQ3DDZvSsScN4Wr0X8SiqyN2OquiY99GHP4G0mRCk6YGe+BtvUnyIdEY7a2na86QBV8f+KBY1jRJ6g7Zpo+EVD63a184Vd7AjfpK5ST/6JmO7CVGFYQnNrRSTurUf3BZBw/mxgZ6/O/C+WlrjVWUEDE5CCu/JX8JRWRyF1UBfplU+iwFsMk7GN4CoCD8xwJa2Jb+d1jSLKvieRmhTzOvafJnG++6fd3cDtooL0bMTYZ0g9JJNQ8nkzkLOu5l/DpW6XXETSbNe1t6UbAMS3NE972zCvZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.23; Mon, 13 Mar
 2023 02:17:14 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::b060:3d57:bbe5:baa8%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 02:17:14 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
 for AVF FDIR
Thread-Index: AQHZUkV7Uz2vEigeeUm0oPTFlJjYu67yeswAgADhW8CAAHHCAIAAgsAAgAOtKwA=
Date: Mon, 13 Mar 2023 02:17:13 +0000
Message-ID: <DM6PR11MB3723B2E57DA32391603C2303E7B99@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230309051011.1165676-1-junfeng.guo@intel.com>
 <ZAnmxK1U+a57Rlpf@localhost.localdomain>
 <DM6PR11MB37232688E5F2E6C2A1646DBAE7BA9@DM6PR11MB3723.namprd11.prod.outlook.com>
 <ZAsDPCq+YLghK0Hb@localhost.localdomain>
 <5daf59c4-9d93-4466-3ef3-3c9cbabe7d92@intel.com>
In-Reply-To: <5daf59c4-9d93-4466-3ef3-3c9cbabe7d92@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|SN7PR11MB6825:EE_
x-ms-office365-filtering-correlation-id: 7c21fe30-15e2-4597-a58e-08db23690f29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ItmAah3t86xtXBk3vTQBXlY+iBzzkUpLrG7tWZxdWpW49O1bQCJJWeZ1dlZF4QMZkNYaIenmWvZQaoYGYt8M3Td0cjrX1rqy+HixTQ8UR+PpFh0usxcjiErtcEH3EGQj70fQuRLFmcVMn7CEkPr8P0zqZHj7YIR+yEsD6S+am5rR/pmgOKuQnNHdE0B1B+RZiK44caCyeUET4bbWwAr73kZKrr9zaVdN9Z+8dCPdaONi0pfMoL1Ji70BEctoFtPE4kpg6dfgfH9k0QKyDYCzGDI98XFLYZl+OAZjesKMuya26CH8wCtFF+piFzBKkJV6zucFPd0wsYy94SFAhsdR1Kf1ZwPBCEGR6CsxZ3uCu9qo2RtAgpjRtH8136ak2zz+8C8bgukFTjaQMB1wsO+SFgUoDqmKdtSUKbsv1oidrcvaVfB8nFWWZRDZPJiAZWq7i5oSOnotfKTdC4M3eqE2769rQjqjkIH8i1u4HGhjhJiQcwi3St5paOz41DjL7m4l9lG9ryzhvKJ972ic3o5ce5um626A0/fCFV49bJAPLqLLgsW2r4tONMi/czrHIAsJnnJO4yEqMbeI/yVaQUuMBiSYCpmi21urGcHbJd1CJphoI6XzK0I/pxusAYxgdGExYLnUmEH/4nRyfG/ZQ/Ruzd9r8u/5xgC6BG9EKSUs4RD/u9jH32ZGMQbLyUHeoH8OttprSbrs0R649GdjZ70YFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(396003)(346002)(136003)(451199018)(2906002)(38070700005)(82960400001)(83380400001)(9686003)(7696005)(26005)(71200400001)(8676002)(6506007)(53546011)(5660300002)(33656002)(52536014)(8936002)(186003)(55016003)(86362001)(41300700001)(4326008)(76116006)(66476007)(66556008)(64756008)(66946007)(66446008)(478600001)(110136005)(38100700002)(316002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Kzh1VXBKKzIrQzhJWkVRU1lKMWVJTzZ0SEpsRXBNdk5mQTh3SlFuREZGVnlV?=
 =?utf-8?B?TmhhWnRLakJ2aHpOclhoSk5QZVZWQTNPWWFHZktRVGRQWlU5VXVZZHlIeUh4?=
 =?utf-8?B?TjllZWt0akhpanpUMzlqSHpub2ZucHNlNExZYnoxRDJXeWl2UWl6UE4vVEto?=
 =?utf-8?B?eC9IUms1Q3M0eGlyN0hNT3NNeUZ6R2l5ZkErQ3czQ081WVRCZWFBU25KbDB3?=
 =?utf-8?B?RDRFcUh2dDlkbk9jNHV2dklZZVVFdzFYeUZGU0p4RGFvOXcvNzVMNHdsTE5L?=
 =?utf-8?B?eWRONnQrZzA5RnVWTE5yYi96eGQ4TFNxZ0NuS2t0MXk5TFRtV1pGYlhlMktW?=
 =?utf-8?B?Q2owV2NSRjNPKzIxcDRrNHcwMTBQTTBwN2NoVkhBZlUvY0VzQlNrNG03cm9K?=
 =?utf-8?B?NEhWOGFZcW1LZkp3N2FHZmg5NkE0aFV6N2I0aklJRFRSTjBrRGZDblZkUnJk?=
 =?utf-8?B?Qy9kNk1mMnJ6TXZMQXFXajk2R2xvbGU5dnZHdVZ1TGxmaGpvRTRjZ2UyU2Ns?=
 =?utf-8?B?U0RvK0NGcFVnNjNoaTNBZ2ZoVHlmZERvREN3bWJuemZ2a01Pa0h5Ky9oN1Vp?=
 =?utf-8?B?VEZtTzhsWWpLMjJUZXoyZkJSa1NvZUpIUVF0RnMrRXdoZHZ4UVcxVlNLc3Ns?=
 =?utf-8?B?ZHc2dVJraUNpRDY4NVZxTysvVk9Hc3VjdEt2NUxHSmxyZGh4dVNPbHk3TllL?=
 =?utf-8?B?ZitxK1VsTkpUWmFVOUJaWG4wWW9zeHlIQUROanU2RkJVYnNXMVFWLzBTd29k?=
 =?utf-8?B?VEs4WDFoOHBPdVFxQmgxTXlialYzb3YyaHJhMHBnVXMyREc3V0cyckNpUEJn?=
 =?utf-8?B?bnE3V3RabjFETGp5d2l3L3NFYlBaQTZnNlNreHhSKzdjZFptdXJjOVJtL1dm?=
 =?utf-8?B?cVRGcEcrNTlheU1QTW9pWmZaMjhUSGI4NWwvRllUTjNQSFhLd2lPYVl1WWhz?=
 =?utf-8?B?SElLbUxlNzc3ejM5Q1VlL3NDUUNpWkRyaFdoSWxtQUJtMFR0Mi9HZ3B6WjRU?=
 =?utf-8?B?NDBLRzZ2V2xkNHBYdVpxY2VCUHR3cG1zMEEycnQxc1hyK2FGUEVSWUxjbTla?=
 =?utf-8?B?ZzZRd3pycmVwQTRzUDIxMkw0dFdzNGJYRGdXVHppN1Fxb0pIcFl6UFkvOGpx?=
 =?utf-8?B?OEFzTE5rQjlPaXpaT1ppOVdMK25yQW9VcmpEenZibU9TcHQxT3hJaytGWUNU?=
 =?utf-8?B?ZEZMREorV2F5MHVpL0VlR1d5aVBPYzNCamM0bDUvcTl6Mzl3SDArUmlLOEMw?=
 =?utf-8?B?Sjd2anR0am9vRDBvTmc0Sklna1VmL2pBQ2NPQ0ZoaUsxU0QwN3dYUmNmcjRL?=
 =?utf-8?B?aUJuMllMQ1FqZ0pOYjI4Sk54cnJUYm9PVldadVo3cVdHb3RrYWJFWlRHNmhM?=
 =?utf-8?B?eHhnOU8vT3FVbkgwZGJEK0dSV3JmMDBaWWs5NWNuZmlMQWVFUnVLUEd1SUxT?=
 =?utf-8?B?L0hFOGIwSS9sRmpsS1lnL2tTTmd4djh0OE91aDY2cmVDbjJvdXZUYkpSTm5h?=
 =?utf-8?B?WWFBblV1SHRPeTg2MlB5bzgxdy9iSU5MaWlVTDlRRnhsTTAxQWhaTWpycG1l?=
 =?utf-8?B?anpEQjZ0eS9RYnI3ZEMyUDd6ZzRndlkwWnZORzFoZ2IwUlJ0eXVJaU9oUGNO?=
 =?utf-8?B?cmRranllajJNVE9GejBSaGN4YWZUeDZyeDZqS1FNcHpSTEhFQ2pPZ3ZKYWFq?=
 =?utf-8?B?aTVlUlMzSkZtclRjUGVHcGRsdmRVY1J4WDMyZlFsTEhMSndnR29saW5lT0Qv?=
 =?utf-8?B?MThmQUFpRnNTQVp6SkxFVXdEekhicFp3Z2ZhcHloanB6TUdUSS9QVFRuazkx?=
 =?utf-8?B?ajhwbzhvNnFrSmk1ek5PbkJpZlp4QmlEbzVGYjZQWkZNalZnK1NBN1RjZ3JK?=
 =?utf-8?B?WXNGWXU4TTJZSC9pOXVaQ1poQWZRdTgydWJ6TmhJSm5CVGd1b1BlRlNiNjM2?=
 =?utf-8?B?L2s4TkdneWJSRnMrT3pmbUpvWWphWGxWZVBKLytmZ3NOaTBFNWw5NklyZ1Ey?=
 =?utf-8?B?VVhPVDhOQ3grOTU1MUt1QXZYMDFqUDd3dWtQZEZpczg3eUZZUzY2dVo1YWNz?=
 =?utf-8?B?UmNPMDRpWDZYVU1JMFBIaUQrMHhjTGF4NFpFVXQvZVhDcjFyTkpFSFM0czN3?=
 =?utf-8?Q?MpSzES8O1WrnSaV6hj1cxEdLP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c21fe30-15e2-4597-a58e-08db23690f29
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 02:17:13.5514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y7HJ8cAP5OQZenPEJxBEPJqNC5nR/SOXBP1BrFII7Grb3fey1ratm90g6oUJaOXggfFD1FlCHJNKnn4lIU+/ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678673846; x=1710209846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OhZa58z5qLas3kcZCqwi+G4ykJUmKSl1bj/8UP1bPcM=;
 b=VRcglScxqZDQ2nQMtMF25uCFRCFTjgD+Y67KxuHim9URFpcETyB8RNTf
 e/JJ+gc1OS5OfSFZ7HqVVtRC2l3sIfeFw0iu2V2piEiiGkiphFc+uc6Hv
 0Azm7dcU4/ZlFyAqnIuQiReQDQu25HjLYxfJgs1C8QTdBZDIzfERNnuvv
 9BIEIDMauBxoh2IeOULfsmtCcl124LeoNQinXQgG/yV1qjXMevb6gBqma
 SL/woFGbhyXmPIeCE1+G1dwYklrdfYwQdKgaxDjt5SV9afaXN/NvYmOJh
 SpZDNJWvH65S+QFhj2S5gx1YzosQSbS4n1YmsMAGmJsMojXCneUUiwlXV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VRcglScx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
 for AVF FDIR
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Saturday, March 11, 2023 02:03
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Guo,
> Junfeng <junfeng.guo@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net] ice: add profile conflict check
> for AVF FDIR
> 
> On 3/10/2023 2:15 AM, Michal Swiatkowski wrote:
> > On Fri, Mar 10, 2023 at 05:16:22AM +0000, Guo, Junfeng wrote:
> 
> [...]
> 
> >>>> +
> >>> 	to_fltr_conf_from_desc(desc);
> >>>> +		struct ice_fdir_fltr *a = &existing_conf->input;
> >>>> +		struct ice_fdir_fltr *b = &conf->input;
> >>>> +
> >>>> +		enum ice_fltr_ptype flow_type_a = a->flow_type;
> >>>> +		enum ice_fltr_ptype flow_type_b = b->flow_type;
> >>> I think You should folow RCT variable declaration here, and remove
> >>> empty
> >>> line.
> >>
> >> Thanks for the advice!
> >>
> >> Do you mean update the code order like this?
> >> 	{
> >>
> > To follow RCT:
> > struct ice_fdir_fltr *a = &existing_conf->input;
> > enum ice_fltr_ptype flow_type_a, flow_type_b;
> > struct ice_fdir_fltr *b = &conf->input;
> >
> >> 	flow_type_a = a->flow_type;
> >> 	flow_type_b = b->flow_type;
> >> 	}
> >> Or like this?
> >> 	{
> >> 	enum ice_fltr_ptype flow_type_a, flow_type_b;
> >> 	struct ice_fdir_fltr *a, *b;
> > This is also fine
> >
> > Also fine will be:
> > struct ice_fdir_fltr *a = &existing_conf->input;
> > enum ice_fltr_ptype flow_type_a = a->flow_type;
> > enum ice_fltr_ptype flow_type_b = b->flow_type;
> > struct ice_fdir_fltr *b = &conf->input;
> >
> > And it's look the best in my opinion, but it is only cosmetic.
> 
> Looks like flow type b has a dependency on fltr b so I don't think this
> will work.
> 
> Either of the suggestions previously mentioned should work:
> 
> 	struct ice_fdir_fltr *a = &existing_conf->input;
> 	enum ice_fltr_ptype flow_type_a, flow_type_b;
> 	struct ice_fdir_fltr *b = &conf->input;
> 
> 	flow_type_a = a->flow_type;
> 	flow_type_b = b->flow_type;
> or:
> 
> 	enum ice_fltr_ptype flow_type_a, flow_type_b;
> 	struct ice_fdir_fltr *a, *b;
> 
> 	a = &existing_conf->input;
> 	b = &conf->input;
> 	flow_type_a = a->flow_type;
> 	flow_type_b = b->flow_type;

LGTM, thank you all for the careful review!
Will update this in the coming version patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
