Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D41C808E2B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:04:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7877483CE6;
	Thu,  7 Dec 2023 17:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7877483CE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701968678;
	bh=xh3BTBU+DUjf9VZHQEUu/fnR9N2Bhq8KBvwJFZQljN4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LhaDj0bUg8R4ZWUfecTlyHHntK0LbZ3fLPjRT+qmYSv3s7KrSPUHs5Dwr0Sqvt88m
	 WVSfkErmhX2dFpdSFHR/ymEprJgDK/u/LP5mDoj6ADl88uneIbSZsfHY5cXt8+AGfb
	 +ch+6otbuRSXsTtFNTGYglxlOvog4VQLpr6TZXi+nJl5q3pr6xVyhauva+Par2gskv
	 1jnjz+Bdjmk154KlFCeUIZEl9l2lHRQfGWtTdgnZGB4NKZfkBbdto2OoYLeAAaeqjH
	 fh32zScKO+gjQtBRbnkiZ03026R6fvF0/LRk3y5CyT7o80TNjNfwNcZzRxQr2QPzb4
	 jpMR/45NeD5FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gMlMfRNjd_IJ; Thu,  7 Dec 2023 17:04:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B6F783C5A;
	Thu,  7 Dec 2023 17:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B6F783C5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FAB61BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1627983C5A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:04:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1627983C5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZP-2jNKxIQe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:04:30 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 Dec 2023 17:04:30 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA9E483C1B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA9E483C1B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:04:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1344667"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1344667"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 08:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765163904"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765163904"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 08:56:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 08:56:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 08:56:50 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 08:56:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEDZg+BCQf5KEK6jwc5dsqgJ3TDgwv5LTu58fIX9ioXMNO2rsqDBaTMhfl/tjKrlt81/BYm4e+WyixJvj48v4NwPhB7Xtydcv7qDNIQjYHPkGobniX+COwh7P8ClTMP5esxvvLLBL/n0S5Om7bu32AAB0540kgL3OhIoyQf2huxZFba57fUmJSdcYIzOxXdFOQgyJdUmuYH7eswft5rYsaoRMmwK6LvQ1keeF+b8+Gd+C6WlJffAVapytZ5KrbuAaFBbKgTpNwzx2A5Sr5cxxyRzy9UdVNvH0lxB9zdImOk8QU47/bOpDnDd+PBTcNhMvQuV/9mvby50rWdqpYvg4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebAKYzsYAKSpw9YlO/gIaCSh3EZ+rGbc8Uk329an47g=;
 b=I5Dcuadg3cv1N7RZHePaNrnuqY8OciSvals4rWmSYsKhxWFjD9b+5C9JnZX03d/qAArxbFTbeke/P/z/Apsdwz0YRo1b994Ebc5nHhzrMkuk6R4vlngAy9Qw16Oqy2z9aoKuYq5c/U+V0lqHHwVvKbg8rrA3L92Q0K4dwkg7J44LSDdzCrjGSEAwAp56t0tBpAS0uy85wx7vvu4OLmwI/jdOiaDHMtFcQtc0t7LT6kL0tqcN1uj6ZKe2rGYdLIgv88ViywbJLLVV8NFLJ84VeAXGSvPkLGJf/rq8LOkHyK/VV/+SGFYdyemuQoLRko8qizWNp2pDYnHrqz8sKR4oiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MW4PR11MB5910.namprd11.prod.outlook.com (2603:10b6:303:189::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Thu, 7 Dec
 2023 16:56:45 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7068.027; Thu, 7 Dec 2023
 16:56:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: poros <poros@redhat.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4] ice: replace ice_vf_recreate_vsi() with
 ice_vf_reconfig_vsi()
Thread-Index: AQHaIjMPBYxM+aFjyEOsMqG8dCFdu7CSm/YAgAt8RKA=
Date: Thu, 7 Dec 2023 16:56:42 +0000
Message-ID: <BL0PR11MB3521EF8DEEDF736629552CF68F8BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231128194215.3318925-1-jacob.e.keller@intel.com>
 <b24eebdf-8ef4-4e93-a21c-64af73271829@redhat.com>
In-Reply-To: <b24eebdf-8ef4-4e93-a21c-64af73271829@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MW4PR11MB5910:EE_
x-ms-office365-filtering-correlation-id: 732ed0d9-82d5-4407-e654-08dbf7457d1b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mZaUgpPbCfkePNHBbuwrX9ZbIK/DTHE1ZqhAIPA8HxxBkDi2gdrKgWVENbioZB7O9Zkj4sr0QOPzqLgSkiEUvS7VNRQxF2ejsdl0u/k+4gfR2uerg+sM7zVHvXwd5VthRtDjTBmBWAUjw3Rrrjw7CSNzqeXkG8M2bLdCtn63E/eMCYd026LD+udeaAwhWbw0EOETyEFZ2HxcKyZgAeTmICR4uYFeh15J+bfSh3yJbtArmIL1OZJ6sXUGxZrVNavxZEqmvGbWGb8NmpAL5iceCgqvVHrpbau63kjK7dR6pms5QWMIkkow+IRuJjtDalC6uQSU8BdOnKdolTpLf/sF9ih57tn6z31E5AsPJUMwA7Iz11IaptWlh1noSozxPJUBDKuiV9aVSy03+XRPGMrRqRzYo/pdKF0kC4TyVfyY561HBKBHmI4ayOd6yn+zCXLt5+AEsLAlhNCZEbQKcpV4wc4w/543OarmY8z33kFyWT7VumbQwPiMUpaiMVn7gnLtAjk1u8qk7zXTFPk8fL2S6zQgEyf9h+x/pSTGwO8Wdsabf4ATycEI69ve8VoEWHSx2KBeQUoszO2SfM5q9A4ZQVCc3g/LQaUAGJKazqycN1kxrjyzml6d1x88R1q9dgjQRSJANFTDfn/O7In5lASaSg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(366004)(346002)(136003)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(38070700009)(9686003)(316002)(110136005)(26005)(83380400001)(64756008)(66476007)(76116006)(54906003)(66446008)(66556008)(66946007)(478600001)(966005)(6506007)(53546011)(7696005)(71200400001)(5660300002)(82960400001)(122000001)(55016003)(33656002)(2906002)(38100700002)(52536014)(4326008)(86362001)(41300700001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZWlBczZUQ0llZ0dtVW5ackpzdkJlMk9FSldYcFpCRC9POGh0UFFEWDRQNWcv?=
 =?utf-8?B?Sit4MzVUL2lldFBwYkF3dU9GU2ZZb2tmWStaMjFmd2NjNmMyUExFTXE0WnJh?=
 =?utf-8?B?YTFDM3hpUVJrUzFqVmtIbCsraEttcW9na2FlNzkyaHlGT0F1MkNRWjdHQlRV?=
 =?utf-8?B?UXRrU1Q4M2V6TVk4UDNPM0ZWUUI4dXN6WGZwYkhBUmF6cXJtQkRrMTRLSXN4?=
 =?utf-8?B?ZEwrVnVzMFZJMndON3FSTldpeTYxWGtCNXpKTjVJb0ZKc0MwWGVKU2lac0ox?=
 =?utf-8?B?UWVCMVRqVXZjNnluNVZLdU9WMlFGczd3dUhFeG1RUHdMYitFS0lrYytWSEFU?=
 =?utf-8?B?SUFBMGJQbkZ5azdzQ2JLbklpaGRxTFYzSEs3TGdRQXVRek0wTzNmNitzSkpP?=
 =?utf-8?B?TVFZTTVRT1BranhCcGpZbCtCOUpBN3ErNjF0WTVtV1I1WWE5YWRPWEE5dHFS?=
 =?utf-8?B?VmR3em9uWUdrcVRNbkVnVzc2UXZKK1R3OWxicFNLQ29FQmlGR2pTMEd0SS8w?=
 =?utf-8?B?Mlpna0Jxd1VyZUx6UHYreW5rWmgxbllmaG5KdkpwK1VzOGdDVjdoc2lia1Ez?=
 =?utf-8?B?bURTNnNZd1Z5RGxvV1hkMGQyUTRNM3pWOFRPR2tERjhOcGhUQ3ZHN2JHOXJt?=
 =?utf-8?B?cGdLQVdLRThDVWtBbTZHRmVyMDk0MlQ2dGhvbHptNzB3WEs4N2prREt6T2hZ?=
 =?utf-8?B?NEVnLzVRNmZTdVh4aGFCdjdKaHliUnE5TSt0elN2elV4OHNMUGhyOUVGZm9L?=
 =?utf-8?B?S3dOVDdPbllwNXE4M1JPVmlRZU1EdmFCYVlYRjlWTGNzYzFudTdaUDdtaVlm?=
 =?utf-8?B?S05DRU5HUC9wbkJVK21LWE1yVzF2Mm1OK2p5ZU1HZHN2N05SK0srV0JNV2Z0?=
 =?utf-8?B?cGxpOUxiRHEvb0FvQ0ZPclYzQ21ZdytucFhiU1pJQjRncGRhVmpLaTlEQ2hT?=
 =?utf-8?B?ZFVEdW5CbU5tWFljeGxrVDFLa3VqVkdzTVRqYnVQNkdHRHA2NTBUUGowaldw?=
 =?utf-8?B?bGpBNnRvcUVBaERzY09RMFlzekh1Y0k2QTJoMWxxTXZlZGRhUGFheDJkcENE?=
 =?utf-8?B?N1hhZGVka2x0RlFuWlZRWUVZckZMbk9MQWxXQnJyb0EvakRwQjZ3a1g1bWh6?=
 =?utf-8?B?OFFUQjgzU2VDb2xld09QUktQa3RaTS83bVowRmhXUkZqUTlJeDdUdnBCY3JK?=
 =?utf-8?B?OGdudFFiMUJ3c3pCenNaZkk2ZzdFWmtWdU9BdUZJR24yQkFkWnorY3RyM2Rw?=
 =?utf-8?B?citaZ1ZROHUyYTkvV0FReHdRRnVDT25hWVdidGZGcjFMSGFjcmxRY3VPWXYz?=
 =?utf-8?B?V0w3TGVjdlRzRlphb1NPSEl3UUJXZWYzeHpqZGZTWDI3dFhscklScVczbHc4?=
 =?utf-8?B?Niswa093OXBjOE11OFZZNU9aQTZ6cDZwc0ZPaWd5MXJFYzlLVkszU0lyQkVu?=
 =?utf-8?B?Y2k3V2xKYU1XOXEyb29ETkkvdGF2Nnkwc2xpZ2xEMEdUbnV4cWVQamZLdFdw?=
 =?utf-8?B?cnNsY3p6aFJNM1E1RFV4ZFl6VWxCelFGYTM2WDVMeDdsVFFuSGx5dUhOTEdV?=
 =?utf-8?B?amJuV1lmVnJsRHdtVkVoS0o4L0FQUjhISlMyekJ3R2FhVHd2OVM2U3pnbDNM?=
 =?utf-8?B?UzYwV0pXNnRRQ0EwOE43YU41K0tLNGVPbXhJRytKOFZIRGN1YXRqanlOVUxR?=
 =?utf-8?B?ZXVZSW95VThMOTZLMElxRVJobURyaFdLb2Q4OWxYSkJRaUFDSXFqWkVWYVRu?=
 =?utf-8?B?UkRCRXpRTmZia0dWdXdIWnYwYXVXcG03MDZHNENhUnYzQzRqKzg1Z0hYM2xV?=
 =?utf-8?B?aTdWVG9yY3NDTFRGU2VPcnd6ZU1xTHYyclFoRjhPSS9sL1loNW9XUndEZVJU?=
 =?utf-8?B?enU1SUMvT3VobzM1V2VzSXZJRHhrWUJYUnA0aXlPTjhyQWsxaGx5cUlHdXd0?=
 =?utf-8?B?RnVOUWNrN1JmSW5MelVrTjYwN2xpeHZwdmxlUXJzMHlVcDF5bXdiZ0pnNFFw?=
 =?utf-8?B?Ujg0ZGJkR0lkVkFzbEgwUmJ6WG4yTFg5dXBvUjJEb1NWZ3pIWkZxTzg3ZWcx?=
 =?utf-8?B?NDhQZVZuVTFxUDlPU3RtdDFuN2EzRHVrK01CWkUvanVSbW14bDRzNVJqNHlB?=
 =?utf-8?B?RUc2Y09NUVRuanZ2SE5jZ2tTZVdlNDlMTmU2QXN0N2FrdTRZalRDY0w1NzZ3?=
 =?utf-8?B?TUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 732ed0d9-82d5-4407-e654-08dbf7457d1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 16:56:42.6481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2FLiHLxKy2IaKI5qn4bfrCCihmF4eH2g9WCRJWUNCE/JxEMGhgysYe1mtz/bTBf1w+O+Y/vagl9/CL9wygr0SylVdYroS4jA+yRcbV4wAUQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701968671; x=1733504671;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ebAKYzsYAKSpw9YlO/gIaCSh3EZ+rGbc8Uk329an47g=;
 b=L3Z2qRoPbCb9ykGWKkiTwO2kZBsUwD49mP75EcWFNnZ9FhCdQ6ydf4hj
 lY5s/RyWZ03+e+QyZnrJZ6k8pPhaUYMCXx5EE976TLe6VuoQeIo/khU6S
 V9jcOriJcK8eOqKQDc9Xh1Uo+nPfd4RUe8A7m5HRE0zMIe3TQg1rV81IU
 +6m3F0b+YuoJsFSDacuZhO/fGSU59TnfDuBQTOFbEXqRrSIL9JHdMOghA
 nirvkg0qm9JPkIrzwlN+abEAgFCPWogkDwDGYgWw2+q0v2H9ZFnNFZl8Q
 87RbLvB8RiRVRPSABC/RcE0MRSRqe3PVaqhR+/zN6lI5zMgRJejegq/ZC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L3Z2qRoP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Buchocki,
 JakubX" <jakubx.buchocki@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Petr Oros <poros@redhat.com>
> Sent: Thursday, November 30, 2023 10:33 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Romanowski, Rafal
> <rafal.romanowski@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Buchocki, JakubX
> <jakubx.buchocki@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-next v4] ice: replace ice_vf_recreate_vsi() with
> ice_vf_reconfig_vsi()
> 
> 
> Dne 28. 11. 23 v 20:42 Jacob Keller napsal(a):
> > The ice_vf_create_vsi() function and its VF ops helper introduced by
> > commit a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to
> > .create_vsi") are used during an individual VF reset to re-create the
> > VSI. This was done in order to ensure that the VSI gets properly reconfigured
> within the hardware.
> >
> > This is somewhat heavy handed as we completely release the VSI memory
> > and structure, and then create a new VSI. This can also potentially
> > force a change of the VSI index as we will re-use the first open slot
> > in the VSI array which may not be the same.
> >
> > As part of implementing devlink reload, commit 6624e780a577 ("ice:
> > split ice_vsi_setup into smaller functions") split VSI setup into
> > smaller functions, introducing both ice_vsi_cfg() and ice_vsi_decfg()
> > which can be used to configure or deconfigure an existing software VSI
> structure.
> >
> > Rather than completely removing the VSI and adding a new one using the
> > .create_vsi() VF operation, simply use ice_vsi_decfg() to remove the
> > current configuration. Save the VSI type and then call ice_vsi_cfg()
> > to reconfigure the VSI as the same type that it was before.
> >
> > The existing reset logic assumes that all hardware filters will be
> > removed, so also call ice_fltr_remove_all() before re-configuring the VSI.
> >
> > This new operation does not re-create the VSI, so rename it to
> > ice_vf_reconfig_vsi().
> >
> > The new approach can safely share the exact same flow for both SR-IOV
> > VFs as well as the Scalable IOV VFs being worked on. This uses less
> > code and is a better abstraction over fully deleting the VSI and adding a new
> one.
> >
> > Fixes: a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to
> > .create_vsi")
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > ---
> > Changes since v3:
> > * Removal of filters was a side effect of VSI being fully deleted by
> >    firmware. Since we don't do that now, it was not happening. Fix this by
> >    adding a call to ice_fltr_remove_all(). Thanks to Jakub Buchocki for
> >    figuring out this solution.
> > * Rebase on to current dev-queue.
> >
> > v3 was posted at
> > https://lore.kernel.org/intel-wired-lan/20230712222936.1048751-1-jacob
> > .e.keller@intel.com/
> > v2 was posted at
> > https://lore.kernel.org/intel-wired-lan/20230712204730.326331-1-jacob.
> > e.keller@intel.com/
> > v1 was posted at
> > https://lore.kernel.org/intel-wired-lan/20230504211829.3869868-1-jacob
> > .e.keller@intel.com/
> >
> >
> >   drivers/net/ethernet/intel/ice/ice_sriov.c    | 24 ++-----------
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 35 +++++++++++++------
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
> >   .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
> >   4 files changed, 28 insertions(+), 33 deletions(-)
> Issue from previous version is fixed. Thanks
> 
> everything looks fine.
> 
> Reviewed-by: Petr Oros <poros@redhat.com>
> 


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
