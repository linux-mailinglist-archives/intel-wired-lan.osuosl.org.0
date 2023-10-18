Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F07367CDA60
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:31:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A94582334;
	Wed, 18 Oct 2023 11:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A94582334
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628702;
	bh=y74Aq6AK/IVP1HjOeZNuDDif7eY/A29KYG1hTSJWuKU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wamu3+jN/qiN0+H4OAdpr/iLgvSXa2rZlmw9+C6ZxsfhSd27sqntzSoi/U03Krbpu
	 Wy6kF2YH4K1jy1j5qIOunw78YIIWOCzlUUy8fcAvb04sFx97+q9DGmNoZL58Wkpoq+
	 MhpALZlJyNhdGo/bae6hEWKlyq2RoAZ45joOgnhhQR2sM50wQ1pIS7O7ZEFljfWPqe
	 ttxLhe5wJwJHPMXdAsHgDj9qrGfLkFpW3zi7cpTCvt0h65ygR8/FLMCbnkcTznRth6
	 Vq5b0wR1XxqB2x+4+IUgWgv4vtxaeSnzm4JrlWlETx5URxMzuBwtYdKEiLQZ3GzyEh
	 pAJvonHCss2jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QGhJVnZ20ZNS; Wed, 18 Oct 2023 11:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 429D582327;
	Wed, 18 Oct 2023 11:31:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 429D582327
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28BF21BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DB38418E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DB38418E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrmIJ5eNTfmb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:31:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDDBB417DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:31:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDDBB417DE
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="452462438"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="452462438"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="900313675"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="900313675"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 04:29:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:31:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:31:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 04:31:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 04:31:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQIcbg18ViINQYbxXMODwKuKVtk9H9oetOvJbvYPB9xcHhDaeF1MqL4Xq3fWYdcWIP1yzich5UiBdhD+HqIfuau7wGMgvrNSwO5XXGwQvqIPZbinwP6jU8FZ+xKnEsxbqjaINwfPF75IRnjJ7DXjpnqRbMaHterWdD3iyW2dPV+WUOFANUB77/mW3bbXQoUu5DezDP7+G3uLo/XzTs8CbkFAtmM8yKilmptkjQrj2ZIT8BzknZH6eCWuxmcXoYvTsGQAVjU9DRERWiO78BD5zIi3SRwQQHTmlLNfYM/lJkD2WRIDktJOAGq950cQ1g4xJSdIEncFTBGBUP3u+VV5Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rs2kZ4HLjC+yOVTcrTMb61q4I+Z+le1xoOD9lPnjzTc=;
 b=hhP5hKYQUgh+XIVRvIxpA/7L9Al/GLvJ942TpaQ6pxwTooFAljlWKyoq7sJbhWv9qWj9Min3lIAfe89v0b5ZSPdTgx1MRU8HfAHGJOMyrEpfWUb6X7ckAGB+ddmfK+2QWyZTVi6L7Ga6gOZf7j0/RQsGf7K/T2fpnLQI6faAS7hCPIGwJlJpslaTxHB3eU4UZShJbsaYKt8jBQq5ypk9AOYj1G54sQCuGmmome+22xwSppY6N4E5JS6N5KItSw/w/1ltAibc/xaaomA+lTId+mVM3VxV2X9KdCKoGVJLFu82F8kyPXDMEXxYaeZJ9oSE1GfQis9my1MP1M4PU5F9+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 11:31:30 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 11:31:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, mschmidt
 <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
Thread-Index: AQHZ+xBU/AMoF6H61Ua957RzMx9FWLBC5FGAgAAHcYCAAAMOgIAMiEdA
Date: Wed, 18 Oct 2023 11:31:30 +0000
Message-ID: <BL0PR11MB35216EDCD5C17927A79193E78FD5A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-3-mschmidt@redhat.com>
 <MW4PR11MB5776FAE3D86203A223769BABFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
 <a65e79ff-7894-4095-b3bb-948b4cfa04e0@redhat.com>
 <MW4PR11MB5776E1AEB843AFE779D29708FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB5776E1AEB843AFE779D29708FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|BL1PR11MB5445:EE_
x-ms-office365-filtering-correlation-id: cf733436-5f4e-4c41-fbd6-08dbcfcdc64f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kQCFadE898754dbIiTKDtFafDJKjNsftQrKcvbzuMs1sqejBNxEpqF07hUau89IkPa+oZQPmB7mxWTh4HiMLZ1hc3202PgC8tOsyQmFlMoM3cVSYbsVV6+HrMHOsc1pEKNHbt30VKiPIM4d3DadCEKi+Zdj0GhdxF3BgYuttYxYh1LxDU5P/iZ7x2AK+Gj5L/vpqp35HTHwDDsLkJJVmQpuchk3U1vMQbKVDR6/2vKoT6SY0hMhwhwjR/25KdZOgGb4NCPcSX2QLBI3rIxgMjxyZwYyXvn0Zo+sY0jn4Ka18/qvb9wZVOgU6gUfjRme4HhAuNN97V/hgOmZ2fjxgZYD3PXm6wK6aV7eSqKdBFcs7yRPcdjmt417ZWJ0/Ww0unYMcZzJau44+S1/z5GcaMJBndI00e8dhCYz70ht+tzSYme9mtWpTNFlNxc0CrgrddG+Bq7BsShDW9G0m5HVJLghQrRO8E8DLNqsCm+03h7y4zSBOw0E+JzSXT1gNOmPVT6rxJxhH2hZHFCdkrH9wCk11wq+b/MQD22XKWSfp5djjMuWnXUUKf9X6KI5xl2k68la9BurjwTg/Y8LG/UjY3gAX0Ulpwxx3cbhUKNU9yM0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(86362001)(83380400001)(8936002)(8676002)(110136005)(966005)(71200400001)(66476007)(64756008)(107886003)(66556008)(66946007)(26005)(9686003)(66446008)(54906003)(76116006)(7696005)(38100700002)(478600001)(53546011)(122000001)(52536014)(316002)(38070700005)(5660300002)(82960400001)(4326008)(33656002)(2906002)(41300700001)(6506007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E/GZVM2SEOU7ZmuJJ91r4xd5IJIy1sxDZlcx/CSnB3g+Xxmq90FEEBF7rwcE?=
 =?us-ascii?Q?sXXmb0b6wm6rPjNHF5JVc2ZvNyw6BJRSmgX1JoU23iU3fjKsFaQXEBuhl2Km?=
 =?us-ascii?Q?S7LKyzscnaJM+BikYOaIv4L2HKnCG0BT9dldqDPueH1Zf+sT2XIcOghOwo1X?=
 =?us-ascii?Q?IK2WTSQOOODaY4f+3xrd9nrTFS9TX2MNCRIQrkYVC7IG26faUOQc8OdRVmkg?=
 =?us-ascii?Q?XKI7oLNVRVs0i2cd62Io3KaTtt3ZadOIJY3ogALXbD2apUy4NyTf4EP8K86e?=
 =?us-ascii?Q?sROs1Pb13QHJUk9CHWjOtPIgpIjn7564DYKpSI1T1n9CYK+YFrhot0njfBUX?=
 =?us-ascii?Q?segUAonyCR6MlDkctUQNRY74FoKO+u3qlrj+ghrdoYkYqZfrl2lNxeV5LoIV?=
 =?us-ascii?Q?E55pbTd6zba2o8zqFMvLwfu35lmeAXuVNDp/0T7RFy+5kSaqkARsBaEKF221?=
 =?us-ascii?Q?XopnGrfCIN88ELkTB0CNYgtx3Gvqm1M7BcgX54hpnMMzX0X9BmLU5ounUAHY?=
 =?us-ascii?Q?hl1r1qEV4MckaxtLOlmWHCA2COZ9e9yEY16mOOqz+RBJ6rZBGDsgfd7NAXZ2?=
 =?us-ascii?Q?1BcsbIpnqg97zAE++UFJGqC2DMd4ak1Z5ACTOs9BL4tpDDAilS6IQhtrobcL?=
 =?us-ascii?Q?ytTSEi9a5yRJRN9x6T32Gf61HVMVA/TCdRcWfbF89HxNqmUNRtWI8Ur6sewX?=
 =?us-ascii?Q?+47Cl8dEKxU82gNitnFI17HkdTi8FPwB8M4L0HUmjI04JDWrC/N7rL+muEC2?=
 =?us-ascii?Q?HLyojp5EYYwSqeSwKfXUlFJp4xCki1Gz96e8Pp/78OpOFHZXDcN4inf8/6iQ?=
 =?us-ascii?Q?rNCbI8PC1iK6BNJbf/jWnnlrooJUgd4jPPjau6iX8ILp6O2M4XD986r7WCe8?=
 =?us-ascii?Q?0igTVJL4YOSsyHAeqmaazeEjpjSfgHSakhObUj2t/07WBPToji8qWO3yQLbr?=
 =?us-ascii?Q?5NVKlfrxulQZX5pyMgr+aNUZbFThdh8I3I303ZVlpCc1zKA43GebpKm0nlUu?=
 =?us-ascii?Q?Ka9RQJrygmZabQZ0PmLRYyRwuz7YEmmzavDmDUiJVQan1LEnZ52M9LrMuDIG?=
 =?us-ascii?Q?nIp7eJYRn5Zp4BPvuXYHNOFgGO3IQalPcV/PUYaZiMnRjtJ4DtVYn/E0LXCX?=
 =?us-ascii?Q?bLwrH/aiSI/pHVnFi/rZNzkNnCfKwxTExtMrhEh6uylZBQcP08og6W2v56LG?=
 =?us-ascii?Q?W1kdXx+Dzxf8SG/fKPKW9ycD76AECd8CI/SP6s8lJPOjpEGLFfm16VIDG3w1?=
 =?us-ascii?Q?JTFou0xGyETkFRC1zUXGeAnKTBjuMUr3RfEk6PHW1G435ptJvi+ju0+Y2yz5?=
 =?us-ascii?Q?+PGxWynh/6ZPHnXWQ9/FCVwqo+BiR5VCPufhocXV8B2UN6BCDiBHIr2NAHcI?=
 =?us-ascii?Q?kKLnNMgn1e30Ze3F9dsszb8p0obpy7Bc8h82bAQiHRMqVf76UArCKnFXTo57?=
 =?us-ascii?Q?RgViCIh7nPOo4luFG/kb8e6Fo8k9E74DkEW7BkdB7Z80BwZMQ6iLBG0hEHRh?=
 =?us-ascii?Q?KhwmcmkUcUQfy0+kIpICCb4yQpB3wG1UsI7YiMPdxRM+QDs98XDEVqBouA4d?=
 =?us-ascii?Q?qYiOS0wAluWo3FOr+TDDTPRlLRd+3PdAHqmhju/sIBPBbFLTI8ZEshm6iuoj?=
 =?us-ascii?Q?7w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf733436-5f4e-4c41-fbd6-08dbcfcdc64f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:31:30.5417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i8B0vk4b6s7XeNn6YK0h+9cmnbbxR6ypqZkjOwp1Rsy0ZJhlwcwZWbZub/Z7vJMtPMNO3blzFR06Wbs2mj0O7wI1b7yV1Fadp/kicq7YmeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697628694; x=1729164694;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6iM+nHBd6IPmr4WxIeXs2ZPIl2a2TaJBWmtXaOL1fhM=;
 b=jgGzfKXKHWqCH6MstMXGSevAvdRWrkF/s0PIFJ0RLQs9NHd+U9VzjG1a
 gLYp1SGXH59kFuRWaTUMH/gAQ13HIpc99kvZGJ6LrKZSxMUf88S65znrq
 hqJX5/y2hMejF0D0t2TtT/gIIGnYQahakCjEogKoPdmmhsMl2G5t5kw8W
 HzH5oy1URbSClzprHZ17uvef6xm710PuyY6XnFFWnbQ7xSe3oY7fzjZfl
 zrR2cxdSt2OLxtK3A/k3InVsWH0wxRRHG5/1f/7d4GkLNVJxwmL5/igGb
 i5lBbFQvrXP36zR3WNVy/i70vG1WMRtfPZnRvQTWzvj2LfwAP2oKQV4z/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jgGzfKXK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Drewek, Wojciech
> Sent: Tuesday, October 10, 2023 2:08 PM
> To: mschmidt <mschmidt@redhat.com>; intel-wired-lan@lists.osuosl.org
> Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
> mutex_trylock+sleep loops
> 
> 
> 
> > -----Original Message-----
> > From: Michal Schmidt <mschmidt@redhat.com>
> > Sent: Tuesday, October 10, 2023 1:57 PM
> > To: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
> > mutex_trylock+sleep loops
> >
> > Dne 10. 10. 23 v 13:30 Drewek, Wojciech napsal:
> > >> -----Original Message-----
> > >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > >> Behalf Of Michal Schmidt
> > >> Sent: Tuesday, October 10, 2023 2:25 AM
> > >> To: intel-wired-lan@lists.osuosl.org
> > >> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > >> <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > >> Subject: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
> > >> mutex_trylock+sleep loops
> > >>
> > >> This pattern appears in two places in the iavf source code:
> > >>    while (!mutex_trylock(...))
> > >>        usleep_range(...);
> > >
> > > I found a few other places with similar pattern (iavf_configure_clsflower
> e.g).
> > > Do you think we can fix them as well?
> >
> > I think so. But those are with some sort of a timeout, so replacing
> > them would be slightly less obviously correct than these here. Later.
> > Michal
> 
> Makes sense.
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> >
> > >> That's just mutex_lock with extra steps.
> > >> The pattern is a leftover from when iavf used bit flags instead of
> > >> mutexes for locking. Commit 5ac49f3c2702 ("iavf: use mutexes for
> > >> locking of critical sections") replaced test_and_set_bit with
> > >> !mutex_trylock, preserving the pattern.
> > >>
> > >> Simplify it to mutex_lock.
> > >>
> > >> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > >> ---
> > >>   drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++----
> > >>   1 file changed, 2 insertions(+), 4 deletions(-)
> > >>
> > >> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> index 98ecf5d5a2f2..03156ca523fe 100644
> > >> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > >> @@ -3016,8 +3016,7 @@ static void iavf_reset_task(struct
> > >> work_struct
> > >> *work)
> > >>   		return;
> > >>   	}
> > >>
> > >> -	while (!mutex_trylock(&adapter->client_lock))
> > >> -		usleep_range(500, 1000);
> > >> +	mutex_lock(&adapter->client_lock);
> > >>   	if (CLIENT_ENABLED(adapter)) {
> > >>   		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
> > >>   				    IAVF_FLAG_CLIENT_NEEDS_CLOSE | @@ -
> 5069,8 +5068,7 @@
> > >> static int __maybe_unused iavf_suspend(struct device *dev_d)
> > >>
> > >>   	netif_device_detach(netdev);
> > >>
> > >> -	while (!mutex_trylock(&adapter->crit_lock))
> > >> -		usleep_range(500, 1000);
> > >> +	mutex_lock(&adapter->crit_lock);
> > >>
> > >>   	if (netif_running(netdev)) {
> > >>   		rtnl_lock();
> > >> --
> > >> 2.41.0
> > >>
> > >> _______________________________________________
> > >> Intel-wired-lan mailing list
> > >> Intel-wired-lan@osuosl.org
> > >> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > >
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
