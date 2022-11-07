Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC36D61F602
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Nov 2022 15:29:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4FD94097D;
	Mon,  7 Nov 2022 14:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4FD94097D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667831359;
	bh=cOdWiQZHhLJI1VH2wGI1XwaloytOfg721/5PPJh1MY8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gGzDMnhEa7yhI3NL54x/qnfX2vHTDYEH8Cw8ni/OPP9MWzs9LEijkgPwUG94z2W7W
	 qImjcnyi7Cr/P+cj6evB/49W9HsR21iTEh7C5rnsHQWBGB47uIPnr80D8ep8QzR3od
	 7xJaABU+4pArTNuwbxfHomJ+iOwcGcC2IkRIjyUZvNrUaCOShHQDDqQZHodMn3zwcv
	 Ju0I2nLsNloXMyKHb8PC9wWelpjfgzW7tgNa+cZ7520AtFRe1WxDgPzWUiXNRY2xJq
	 13IRU9wfKp04jpIT3fnu0WjHG7+B7PRbIaDjNfCfSAKNoKRphSNFuswGwrQbFK7ATI
	 30TkrqIv7sQAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-mACQE8gY7n; Mon,  7 Nov 2022 14:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71BC34095F;
	Mon,  7 Nov 2022 14:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71BC34095F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9F161BF94D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 14:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C2077401E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 14:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2077401E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfMfJHxerCbP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Nov 2022 14:29:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC021400D3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC021400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 14:29:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="290142832"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="290142832"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 06:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="635926774"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="635926774"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 07 Nov 2022 06:28:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 06:28:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 06:28:53 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 06:28:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0Mqg91hgzrAHmwYpD42aEA1Iyofyb/kR6cYxZiY2gB3WWtKLyoQTExaT4+pEkQkMuYB9AVROmSlWQ5Dhiv3VDrh+bewkp+wTP53iYL1q+ts8hSWtfGe4i9KzSHYz+CPbThzRCkUmwXJ1YXqdAJv5tf28JhfPOWgS2x5Bzctes7Dm1Adh7qoEvXlntQq4SVavV8O0/P6pxgWDolOefgQil+jCFaIdggJ23jLwT4THCn8GAWjUiM5tj/K8XWk6vhMSO9ixJ5oX7nLie1eWpwEW/XU5yRV9qJvjwr/h63/ev0oIDxzuIB2jZXjoxd/0diTe01NsGR2PAusned9MLXOFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4bO3FWP9cnxJfjWMpZXNRKhDKQOnHM/BglFLGdgmTs=;
 b=nqJOpAXEBdXvF7ciOxK/6NVw6drPIIp7PdEaL22jmlNeBj4ZzxhQwpNMpHuFelqUTgm9pP9L6E+s6/YxgUSmrAb4IqfT2Gf/pf+nL289VuYBUz449/N9/lB+AANNlfpBAh9/MM6SrvRAe2W/LboJv3jZp+qtuSvjpHqES8iDIuBGkZsasx3b8lQEehyoI7gWxYmlHd/gPoUWywQ8tAlsbair6Xby5fCtoJnWMS4RqGe9/p4eaxz9DI+TGppr+kM9bms9nZD0wApiAmwlhIPvUafkl9/RHnItrP9XBYbZ9DEbtWR23N37ddySxGNwAXDSREZw21t0eVFOM3Vb+R2YAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by DM8PR11MB5591.namprd11.prod.outlook.com (2603:10b6:8:38::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Mon, 7 Nov
 2022 14:28:51 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::866e:e413:fe5c:81df]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::866e:e413:fe5c:81df%9]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 14:28:51 +0000
From: "Staikov, Andrii" <andrii.staikov@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
Thread-Index: AQHY6EM2VsfjYhLROkCs68HiiBkZfq4g4/uAgAdRfrCAA1yDAIAAJVyQgANH/4CABJolwA==
Date: Mon, 7 Nov 2022 14:28:50 +0000
Message-ID: <PH0PR11MB561160A0962A0A453711141A853C9@PH0PR11MB5611.namprd11.prod.outlook.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
 <20221026164445.56155-1-alexandr.lobakin@intel.com>
 <PH0PR11MB5611A463FA999509D6CA914C85379@PH0PR11MB5611.namprd11.prod.outlook.com>
 <20221102115008.3067605-1-alexandr.lobakin@intel.com>
 <PH0PR11MB561148FC5F7A5E6AE10C1FA385399@PH0PR11MB5611.namprd11.prod.outlook.com>
 <20221104161019.2385204-1-alexandr.lobakin@intel.com>
In-Reply-To: <20221104161019.2385204-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5611:EE_|DM8PR11MB5591:EE_
x-ms-office365-filtering-correlation-id: 65b1d3ca-7da1-4d05-c56a-08dac0cc6406
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LNBA4MZGow970BNroKY5Bbd4q8mFLA6QvJsUAxltifm/0MZOTASJLue3DWFQF/tlZQ0VkobbXmn7CA/tyaslznSo8uiTY6hDrWeD+B78jJykAdC80Yjh13cINpxkcvoc/ICmW6J0SO8ZeJBYLnQ48HBzMuqSwzhiw2/va6SXlBxyCgaX8R4w1PG5LaDxHVpkIuXjh5D/YkJmnWye8kVVAlsW3QQc1hQUBvkoSzVajVMMNJ9QoMVtePXH5szLvsJnurChLP6LcU1rLHWDUdBfPDbk9omTGZt7ctNhNdBFhYzreBeZ/P5Of0Y1ecHnf7Lcly3EvIjxLWSTsbGcc1CF0jtlykbAUn2upqHRKkgXOu3zYEQTCS12bS/RaYz9fc/zoHNIkntyoCH7efOMLp1ZDiCEXj/9vmksKTL/n9Gj9TCHiLl0lck1frinQLYM+3WZZQXSGvY7YNcxD140M6yd22KoodFITgltrtWbeyMbD5QWjqdi1lAPiIwfQSKtzDHrusCRNdd0lcvuFGhN+DCP17LOjkrEyNnwGffqBOyczX3kDpbOl3M7njtVXA7aZqtQtsp2UTAu0lvy3ApypgaBtngHtzFmhvQZbVMJHnPRevYpIlMGHktm7Bz0EdyKYzaHghAjQ/HENXuiB+nKcrqCaxNA9bIZ5m26whaNIr7vProWDUBTy0PLleM9m5qIObSNhSSDyLoU+egBy0YznDSwyA9IXXZdt2u+BhxI9VTNygIKQAXrFayQFuF2VqaX/nVo8lJ4bQPIT9ebylrd4bcRRcfvms1V8Bx9P2LCTYeXsSQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199015)(478600001)(66946007)(41300700001)(52536014)(71200400001)(33656002)(8936002)(76116006)(8676002)(64756008)(66476007)(66556008)(4326008)(66446008)(5660300002)(55016003)(6636002)(54906003)(6862004)(316002)(83380400001)(2906002)(38070700005)(122000001)(82960400001)(7696005)(6506007)(107886003)(86362001)(186003)(9686003)(38100700002)(26005)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Jmwl+WnJkVK80R1MUV6UCP6CaZmH8FDB1QGrsJms9xFmyzmNMmntZ57LcXeR?=
 =?us-ascii?Q?W6Z5u/ex8jQgFFooLcitON0faTBOKbmZGl3DSgl0Nq/inzLFy1+gX8pep2Fv?=
 =?us-ascii?Q?p4NmAEoJjsgWDkBuZtTHgrxCJQLVWFhDbwfYL5k8WRsEF8TuJPoWKzyJGiAN?=
 =?us-ascii?Q?pSH1rHBS2TKmbnjHe855v2vsgZMxpN/clESupoKdeue7GGAioHuA5NK8EWPm?=
 =?us-ascii?Q?58PMdSO8ih2mPuCw9m59MfW+toDk1PNJOry6D0DcWRQGCdJM2KhtACfbePWL?=
 =?us-ascii?Q?BHwWEWz2YXDN4wq9TS9JWMVp9QXRNesBcbyV+42cKNnfB9zZioVwxQDa0DY1?=
 =?us-ascii?Q?Y59HdofVPDwZzux6TfSa1XLuXseX6aGASkqzyp9LM8VH2efo3rgmjFujKG14?=
 =?us-ascii?Q?VQXNqJmmRlKVRGpNrVuaQBGC6A5BoqJKtzZpWlz5yi2E+k8FlzEBCh1Mudd1?=
 =?us-ascii?Q?72XLBKcHIkmMfSkoLyJBs3fIxJyU4MS+5553S+n9RmunYag5KnmqKhXL0eLu?=
 =?us-ascii?Q?NkBuPfdYIf2V1NEggPmZ6dPErZjgi61+BduRerFE38M9f4c/Zt15/dkRBP4F?=
 =?us-ascii?Q?1tzPrya1ed7SXaS+c9Lxp4xK71aa04fLhYF28ws+LLZcex7EILXnHp5m94sY?=
 =?us-ascii?Q?VCuc8vZbs0TPur42Jwy4pmfse75HCZn19P3jMIGDpDjKAVF9zNJArZJSazgP?=
 =?us-ascii?Q?g1IhpTdFCVTrM7LrNbtPTD6haftWcf1v3R6MFEL/D+hXG+VVHAD7vdvG4MPx?=
 =?us-ascii?Q?i5njGDnjnWHhvDCfnx/VETt8K5yp0UqaDg7S9WeKVPVUgEloszqzfzO4FNDr?=
 =?us-ascii?Q?bJUuIInDOAURUZjgHKsUGGigfcAFDo1aFU6s4Y/ks4B5ZnCnLtwCcLoaihut?=
 =?us-ascii?Q?2HOdMevY2KH91z81t2AIQhL+jWjGEL9i88z5LjmkHYUHOmyrex+CQVpnMAxc?=
 =?us-ascii?Q?MIsoBWGfVCSWiRoGF5dV4Nx1xBygdRGsudr45W2+0HQQpyPjIoT+WWSfh7jE?=
 =?us-ascii?Q?mBTVEh26ZHprK+J0sQKzuu9Ljo/wX/cm5FSH03QfkyBkSSgFbHPUvr/dq9Z7?=
 =?us-ascii?Q?mAS4ToFi3yJeatBt53myto97blK2tvFNhdAHcAvdp79zZ40AxAmN5WM+8A1t?=
 =?us-ascii?Q?QiLl1gSwDQKo7YmRWaI6qnB1TcAodKCJEOErBtdTRR91YVLJUgfLr5EoFlN1?=
 =?us-ascii?Q?kd1qbF4KJ78I5vrvrzjxcHCteWbRBA+0ZiSKj3421QLkwXUF8qj7lAWju3im?=
 =?us-ascii?Q?4ZRBmdxpeuxiLwXl2PUUdAbKefMJz1VFf9UNFRqWo+qlrQlH+LshUhpqPIc2?=
 =?us-ascii?Q?ZwxPo4e9J5rL7l5s+AyzGBeuB2u8TJbCCkXwouweJo+gCEtUveIvtStrqB7q?=
 =?us-ascii?Q?Y2o81shGOvVYF7ezqvZuo7bgGRstfdj6CaDsVSmnndIo4DPkJy3UglV8r6TR?=
 =?us-ascii?Q?3Gw6zAjmC4KQM+aSpZ3glw5OsEFG/hx1MZ543i524s43FNN2Y4SCvP3F9tcg?=
 =?us-ascii?Q?Iog7KgN4vq5YyODkgdvreFSZSUrleAunPC2B3SXp8C8lfmtvdLO7MFmfgN7l?=
 =?us-ascii?Q?MJNgTp/7WC7txol3az1T+XMFC1aT5hsIPNUlLGmI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b1d3ca-7da1-4d05-c56a-08dac0cc6406
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 14:28:51.0217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I6N6mjF5u57Acvmffke3zlqUg9fA7Xz9OtGZ9sp2sXPA5ZZI8iIf+ir1Rvw2xgnx8XtdpCy1BcjWS4a3tjFynoWh09BL/ZPWv8A+FnsGfgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5591
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667831351; x=1699367351;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Chf1KRN3ryLASPjePJ3P9KDYodR7wK4LgKlk0IHmjFM=;
 b=eo+WIHvAhsHKFW0kcv+zOHIy1n1m4AALbLQ8EoXNBCOMfAtPmMQkgvA7
 nH5abnCJ7kaBhivZdjb2WAxEogn61z5F5j6VN685CJ9n2kaLvxrvvXX3I
 HTAabBmLOBeH58MgsJKibNHqWXUH+576ZXD69MZ8dyF7EFuDoy9npFdSG
 dkxziKPy9C1O9AlmkrtUNU8ezBIy/ki5KWPJDxSCDFf2gmjELNv9N6JYr
 KnzwZ0y0QwANpRyCR0XFayHgfOaBwFwSPKz5V3j8BkyzLVX6Hwf9HEHMh
 1NxbnMdPC+D6wrPZ6B7FOtKAjIAEyhuCHWkNv67NC5uJdNfHCYNzsL9Nk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eo+WIHvA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: "Staikov, Andrii" <andrii.staikov@intel.com>
>Date: Wed, 2 Nov 2022 14:04:43 +0000
>
>> >> From: "Staikov, Andrii" <andrii.staikov@intel.com>
>> >> Date: Mon, 31 Oct 2022 08:30:59 +0000
>> >> 
>> >> >From: Andrii Staikov <andrii.staikov@intel.com>
>> >> >Date: Tue, 25 Oct 2022 09:27:05 +0200
>> >> >
>> >> >> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>> >
>> >[...]
>> >
>> >> >> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop
>> >> >> actions")
>> >> >> Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
>> >> >> Change-type: DefectResolution
>> >
>> >Those two tags shouldn't be here BTW, only Fixes and SoBs.
>> >
>> >> >> Signed-off-by: Sylwester Dziedziuch 
>> >> >> <sylwesterx.dziedziuch@intel.com>
>> >> >> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
>> >> >> ---
>> >> >>  drivers/net/ethernet/intel/i40e/i40e_main.c | 155
>> >> >> ++++++++++++++------
>> >> >>  1 file changed, 112 insertions(+), 43 deletions(-)
>> >> >
>> >> >[...]
>> >> >
>> >> >-	old_prog = xchg(&vsi->xdp_prog, prog);
>> >> >+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
>> >> >+		i40e_down(vsi);
>> >> >
>> >> >Please don't. Unconditional down-up was removed from i40e, we've made XDP hotswap in ice in our recent patch queue and now you're trying to effectively revert all that ._.
>> >> >You don't need any interface actions when there is a prog and you want to install a new one as well, just RCU the pointers and that's it.
>> >> >
>> >> 
>> >> Can you please elaborate on this. I am not an author of this commit so it's hard for me to grasp what you are talking about.
>> >> Are you suggestion just leaving old_prog = xchg(&vsi->xdp_prog, prog); instread of the part that was added?
>> >
>> >if (!!prog == !!old_prog), you shouldn't do any resets/reallocatiions/etc, please leave it just how it was before (when they were being done conditionally on (need_reset)).
>> >Otherwise, you'll kill prog hotswapping by trying to fix this splat, which would be a major regression.
>> 
>> Sorry, but it's still not clear for me what changes you are asking for.
>> In your email you are refering to this part only:
>> -	old_prog = xchg(&vsi->xdp_prog, prog);
>> +	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
>> +		i40e_down(vsi);
>> 
>> Are you requesting reverting changes of the whole i40e_xdp_setup function or some specific ones related to (need_reset)?
>
>It's a reference to that you now perform resets unconditionally, not to a particular piece of code. I guess the best and quickest way for you is to contact the author and let him fix this and publish to the upstream MLs.

Unfortunately, there is no possibility to contact the author of the commit because he is not working for Intel anymore. In addition, it seems to me that some of the changes in i40e_xdp_setup() function indeed fix the issue. The commit is mostly targeted to this function. However, I don't know how it may correspond with the changes you are requiring to make, so it's hard for me to grasp what should stay and what should be removed.

>> 
>> >> 
>> >> >[...]
>> >> >
>> >> >> --
>> >> >> 2.25.1
>> >> >
>> >> >Thanks,
>> >> >Olek
>> >> >
>> >> 
>> >> Regards,
>> >> Staikov Andrii
>> >
>> >Thanks,
>> >Olek
>> >
>> 
>> Regards,
>> Staikov Andrii
>
>Thanks,
>Olek
>

Regards,
Staikov Andrii
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
