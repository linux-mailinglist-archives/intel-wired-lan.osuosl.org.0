Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17476590634
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 20:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B05BD8301F;
	Thu, 11 Aug 2022 18:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B05BD8301F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660241691;
	bh=WJ+f0IENPDBSic7Ta2T0991VgMz240D20ANM4pBsqI4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V6TI0K0qPvux62s3pBPXdMnf75FMnkc8vpwjNQv04xWc4iGZaHfP1kA9aOU9dM/vj
	 gFRCDEiTJd94lLovqaYgC08WZuKlqvVYjTsrZfI7tR55lPD0ShvhrLCvMT6k5CmP7O
	 WmjBIeXUZk98Y2VRw3V4Tydlk60OQErIwVrNB/zJ5ugToeznLE/jRRAmNRw4f6CaRd
	 KW9tRk22noDNedrEUbpWMDzDJGVQtczLyqiCecmdWQH17ouCVw2r7v9ZsALVPwaPGM
	 iRFufCU8F+8o5k37Mmagh61wCG5PYGwmi9CUbi54huYWrZHJ9+TfAEjcn5FsLjTHGu
	 M7dApFcrtMKjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2a4Bet5A1OQb; Thu, 11 Aug 2022 18:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD2C582FF9;
	Thu, 11 Aug 2022 18:14:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD2C582FF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D6DCB1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6C194184A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:14:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6C194184A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c_cEyS34lwld for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 18:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A63DC4182A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A63DC4182A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:14:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="271810139"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="271810139"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 11:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="602256418"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 11 Aug 2022 11:14:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 11:14:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 11:14:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 11:14:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 11:14:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWJxIwn+uB5+33DTMreruSzDXIJH7TIo+LEcsskryi083rQnLNuJYf/Ik4azbkfk4sRSkJMww11bpCm1FoEvznR8DIDxcHrCRSbJZgH/RHfNl2/aZyGNjgKPPJwD59vcCscMlSQFBx9mPo0QvlPdT1C27ZD+Dz8NeqC2aLucJXiQHgAQTpJQIo+ynAxkVd1TF5Vl10X/GjXpnRY0+CGhOdQ2iUCT+f1/23oimMwsUZ8EPAk9Scf4ZptuA6iqOl33rEQ6r5SUmWk5JxnS4fgJIVSrkqiuaQqqSj5PFhBUfS4yjjBZua62Bxs921Q32YRODgMDHzQsFLg6zHQVxlPvFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F29gLG4yk1k6+Jx1rDal8d4d9PeIrTEqcrjwbfdBq6o=;
 b=jfVBrMmjNTsJ2Np15Zu3DrdONnJjWOVaaIEKEaEVsLq544f893UKuAo4rW9HuaIK/Pp7ZBe6dCyzyp/clbBbcwEcWopw0Ue+IbvefmuQrKUSJpnC6ZuQyqkJVOEbIQv+ttz2v/5srT3nE19/LeAHNqVdPWvQ2xE6TkkYz9vGBgpdgwi0m+hGMRuG2ZKMw57XBzPl2DlVw0m/C7t/UMh033iS5lG2eZwmMZZ+uW1DL/3obpu3+XuzZoO7tqk/4xV3+skTRWq+RaquFeXBjHtp2+WaerAsvaZT1V3Ms2Qs36NXHQ/QXzk+p/DxPTOKgeFL877eYKNdrUaMQaww3PM1dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB2762.namprd11.prod.outlook.com (2603:10b6:5:c8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Thu, 11 Aug
 2022 18:14:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Thu, 11 Aug 2022
 18:14:36 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4 2/4] ice: Ignore
 ERR_ALREADY_EXISTS when setting promisc mode
Thread-Index: AQHYrYSwsPf5n6epnUGViTX3lx5Ohq2qAHxA
Date: Thu, 11 Aug 2022 18:14:36 +0000
Message-ID: <SN6PR11MB3229D244CC48B161244F80F8C6649@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <1660223801-254272-1-git-send-email-grzegorz.siwik@intel.com>
 <1660223801-254272-3-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1660223801-254272-3-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be439d2b-71ef-46bf-884a-08da7bc5598c
x-ms-traffictypediagnostic: DM6PR11MB2762:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XJsIhzcNJ0fOFjs/PYbQ6d8H5LtCDrRuR91SgfrPxkvF0+x7OB36xMdMh4H+URdWz/zeZAoRMYxywAkGUacOXTio++5GfYlACxBwhoBiczmWyldGTfFMNIwu9Es2E3XR2pEnRLOFMrxfs4xz24N91wiAbByV7+hFf3kIVzZkSY0/z4aM5dNbtkbucXGwmhFdiltPT4WqdTBnEvbBRaWYI+3BHx1Np7GVaFEMVehvHZmHfqRAy/w1jkyynqv/em0MnaFWA62FP9jfuPSoAH+kO9gQHCgMRQItnKCsvQRyO1wo6IQiDYCOoobL9/8mgYqGYCfYr9X8VblNcb8llajZ2QtvC2mn2jv7oN+ZxsiCUKy38N97vx0Kni0atqNJ8n4MVm0LXhdTsHQTq7WDA1cN9wehhZYNixHe3wF6V8xw4TLQzCNfxwt+BTGIOWeenEicTYbJzlV+WQNSEoMK1/7vs/tJ+R3ooTyS4ZbiF8va76uhKkRyd0XTIli/hfx0EONiOk8HNJPuR68MjS3dEzQ6Z12qhlaSJQxR4UN8Bi9XGkYAsLr2gGaMPynHR8ut0VYmiyc+YtmweFwOMyTb9iEQck4/Q2JJzM3l/+7f6U3QUE7s8JR1ta1ac7DD7AH58pGUGuHA/+F6xN7UJk4VhtQnXdS6DiDN0N3T3XNrDLRsy6HR9Xbd18cXbG6La69vXbSy9R23/VfXOKXHSUP5IuWkH64XaVBowzqU1/CJibAURQm4CD5cCZXIA/OGEjcuWAQ13FrV3HaR3lydZ0F8CzE654gXKmSkfp2q8Q5TBRjUc/E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(396003)(39860400002)(366004)(5660300002)(26005)(66476007)(110136005)(8676002)(41300700001)(66446008)(4744005)(64756008)(478600001)(76116006)(7696005)(86362001)(33656002)(66556008)(8936002)(71200400001)(52536014)(9686003)(4326008)(66946007)(316002)(6506007)(107886003)(122000001)(38100700002)(55016003)(53546011)(2906002)(186003)(83380400001)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BucoviFaplMm1MolgAQSJDl5v9f2rJnqEApxGEhySelVwaJsMjxfWn9QyaFc?=
 =?us-ascii?Q?zVXCy2GCQcpOymdUlT+TibY5m2D4a3bVlQzaiMHh6plYh+o72pwMi6tNbmh/?=
 =?us-ascii?Q?TudZu/m1r9u2gpNUAVng7rwz3I6rrPArCxA+G8HyCzI40P8AQ6uKBbZxjA4U?=
 =?us-ascii?Q?lmpDrCXai2lHfEto+97nYqM8fuTrp40/Q526k66NAMvjgNDV1DDnZiKzS31s?=
 =?us-ascii?Q?+/aEVgHTQba+ODre3N+cNc50DlXBUND9IK6okE0HJCx64l1hvtOKyi9x/pO0?=
 =?us-ascii?Q?tzLPU8kZOdrAaOenKuvq/RBLn1jypiMXjA7jsWWtXCcvcDZvTWbFWqKZmYUG?=
 =?us-ascii?Q?l9eX/+xbTGMsvPe2ayfa3Vo+vo9RWj30pjQRkGOb0asF4CMtaiJt14qfrPyr?=
 =?us-ascii?Q?D+6rmSALzhfD1nN8EfTPFNTuuATC06M/Me6v+gcVa1Adqv7hGfMCcBfJZGQf?=
 =?us-ascii?Q?MAJr4zyU6XEABjYjww7t6VGrwzX+i6PouDfXtiysLqanZwCi6p7Svl3U+mIf?=
 =?us-ascii?Q?X83pecTDpgIITvEZivL4PZrwakTqgZ/sSyT4Jb+Y/zUoOqLae6ZPs5+wKKde?=
 =?us-ascii?Q?LtBqqzsr26oK9hog2tPX+kQSdP4a5QYTA8Mr5AkLZ3pfmg8UsHRP9gaQjbGD?=
 =?us-ascii?Q?Zd7XnhnhGsUYZZXQ9hbEufR5r+GFpImhrsKcYiSLg3u5LBYFyvpkyWhSe59N?=
 =?us-ascii?Q?rJhT3j0pVDxmzxHFIr3zgtRhGYjct/aOFDUzDFYCUv3AYQqgU21hxl8+6TdE?=
 =?us-ascii?Q?06rOI+4SXDyjlY1xIyKzz9mv4un7bB4C/cA87RtQhh1BR8bUlDLQO0wk2G+0?=
 =?us-ascii?Q?q0PYd/JrXAY1qoDv4fpeZtExc3YJ11a0rjgxL8VFI5oFPGGLjWPhBSrjTAzc?=
 =?us-ascii?Q?lW0uQkqN4xrfU/0W5UTUpE9OhFjUrZWwpR2vvYs0YC8jc+eldf+Hli+DsPcT?=
 =?us-ascii?Q?+sIqBQtXr2fqs1TJe7jHRyh6+99fsZwgQym+ESzm3MIo4vtOVV3crRSFlDr8?=
 =?us-ascii?Q?GJRHct9mulXBPj3QaHcOhgCzRB6/JyztKPFsHt5F2L2VY/+SHW/V2dgxjHb0?=
 =?us-ascii?Q?voPVNWuDLWyyX/ozw30g729tKcxnSIEn7E0XB1ZZhPVEQ51GTGFN8JI8N+tT?=
 =?us-ascii?Q?9ixzBBtZQSM39Ex+q1PbVPu5PQifZFFFjsPluUPp3M9YLRI3I6YWt95wX4rW?=
 =?us-ascii?Q?C9t3N4PxXW73BlZ6cB7kAslROQoka0Ba2wX1pBkBwVzzt3gIUICUxEkvPOaZ?=
 =?us-ascii?Q?M9o+I4NmEF7NQR24X2WZXIreToc18za4ytTTWoSfH4kXOcCxdg7roa2OBYaz?=
 =?us-ascii?Q?6+cppl7qCdZbb0l5Zzz7Y4HoumUNp195rD3soLHPtcHMEEEv1tRPtWKhhZeD?=
 =?us-ascii?Q?sauWa8DaMm34pNkaI/KRXrZgP+ZP7m3VUQigZbDrOv4YNO+CiRgAxH5izl62?=
 =?us-ascii?Q?V7hDm9H3gJzs3w/1XRLlzZaZlUYQRN+plhTi0fOT/UDGrZwTvE+TwKGmZzuT?=
 =?us-ascii?Q?+FBcltgHyij6RMykuczFXTdpGCDV310ksY76VpWjyAqRdX3vOiC+VKbrF7Mz?=
 =?us-ascii?Q?dCNhZze5hCv2d1qAap4qVTDHrD1swLyDk+bF+m9cSNpraZizBW1hz8KVMleK?=
 =?us-ascii?Q?PQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be439d2b-71ef-46bf-884a-08da7bc5598c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2022 18:14:36.7346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JfnwjSgIf9PlU40MHhOLqTvZEAXzwarL7NWLqUKmgN4ByMKIjNhdbEf9JfwXxLUTaRlRMY6PCWvzf0jOdwdElMw/vv4ffx8+0lEKHstkP64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2762
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660241684; x=1691777684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F29gLG4yk1k6+Jx1rDal8d4d9PeIrTEqcrjwbfdBq6o=;
 b=FS7eFGSo/po6jJk2FjQwu01/DRnemvQwtMWBfNjL627Cy+d0vxADdcZq
 FAMAaV9KyWtovm3/7dWkIU1Y+gaN1Lq9H5r2vEg0D3UCeXmLSpDU8aUO8
 T1VhO1QlbKz6gIGS1Uxp4RxeFw+KcgoQlLR0TAvKFl3MDs1BLI07bRf9M
 1ZBOhQiubjd9IVuvtHTiCHtFZGVG4GyGZpDbZxtHM0R8GGuu+lf71dUrp
 bn0Jsg2hFgL1Q6iHNRp3wTvUUopJ0Vwe5bOMiImnj3cLgCJNPfhoMNgNY
 TRm4/Dkd4SaBm+6BgO7oJqAbNOUgG9sOQ9nFLeQd6eRLApyk+AhYIzzNz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FS7eFGSo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4] ice: Ignore
 ERR_ALREADY_EXISTS when setting promisc mode
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Thursday, August 11, 2022 6:17 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v4 2/4] ice: Ignore ERR_ALREADY_EXISTS
> when setting promisc mode

This title still needs updating; ERR_ALREADY_EXISTS does not exist in this patch or the driver.

> Ignore EEXIST error when setting promiscuous mode.
> This fix is needed because the driver could set promiscuous mode when it still
> has not cleared properly.
> Promiscuous mode could be set only once, so setting it second time will be
> rejected.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
