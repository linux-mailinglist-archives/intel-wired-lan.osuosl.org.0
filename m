Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C750C6C7A51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Mar 2023 09:52:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 106E68415E;
	Fri, 24 Mar 2023 08:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 106E68415E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679647946;
	bh=bKOKCAer7xlzB4hNlZCJx3yGEd5xg2AglknQQFrHf8E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j7ouQ5HODAlOaSYSL4GyJ1Nqwoki5rCxQPGxPBCehPcG/qtyjaV0DSgmMejjdxKeV
	 LTDijLHITx810HMNJHq2ViR4p19ffo5fFf0COZppwpPhDXktGnox1BAkwVLl+omP5n
	 D8WJKC3AvRBPmqLUWTigAU/hqirt1bTbtpqOB7nJK5b79MRghTfE20k5xuCKeD/0gq
	 lpiu79g1JHc4p0CsmZ5j0meeh87xYxKuu0vPWHVlJkQ3xyN7nKlaLcW39Q+2PtGJVe
	 lSAHmkUm2UuUUWJsKgR38rP/IkM7tDiC4kaAc7/ssiPYyt/Laa/PQpwYBCHvchjUEY
	 CubmGAnTJYz2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgWatcAf4VMn; Fri, 24 Mar 2023 08:52:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC56B840F2;
	Fri, 24 Mar 2023 08:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC56B840F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD1E1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 08:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0044460F75
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 08:52:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0044460F75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZDC-9NghUat4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Mar 2023 08:52:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0570560E90
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0570560E90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Mar 2023 08:52:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="328145677"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="328145677"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 01:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="676058585"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="676058585"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2023 01:52:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 01:52:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 01:52:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 01:52:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWKpipHIbZelfbFiHMpu++nMAdQ4SdoIVjajDA5jGGf7IXgT8uYmJwune5CgkO7oMdN9I+K93gl24iWkx7wiKT+zeDaUcqfu2uOgyggzXsbb8gLGZILl5XNz+WCmRhuTU3wLATWEU4R9LxZww1MGPrV1ct9I4LVKEhuN5xT+xZWZb8VzxHDhIcYCfoiHei9R5+Q7S+p0lvRAstrSGR6uYgOmbtn+jHJEz5VUyrDQxQZirtAooeLpcA5VrN8FpgPkYsErGLzK+qSAvQW5JPGpSvYQ6Lst1w/Lq6YB6LJQNHtzZK3CYIHmvEL0fvkKzSE1M5lA7NeLeuuLJDS/MfuoEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TAt42RSGBb3iCb02wPA4mDsNmT4fNJCdxcw+BjwL2os=;
 b=Iaqa8ZPrqbCvkq9fqH75ZJKqz0xemBWv4gVN3vxqhQRtSc6D1ng3eFRVYgep/qGaYygCeXABiNhhIUK6mMRdbhAra31SojN9yCatOKBChQ8ddkjtpaMTTcR4t8UZwprd//AcAwaxeZBeKMMq0q4fHNXl2/kVvx7joS5mNmCohvS6INmIo+HbCa7oKBBslOMR5UaDpMyqupdFncEXConGLhb5/NjRJDbi2O09avInyMcM6KqO170XCEzGwuGwuIcy+LdS40wSOx5EtZW8vN9cfmZFn+kKRRcej0k3YpDTi2UndmJiX46Z+E2Gh91uFzrAROAOQhyC1NIK6w1IMqx3hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by IA1PR11MB7318.namprd11.prod.outlook.com (2603:10b6:208:426::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Fri, 24 Mar
 2023 08:52:04 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6515:e7bf:629c:e141]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6515:e7bf:629c:e141%3]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 08:52:04 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, John Hickey <jjh@daedalian.us>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Panic during XDP_TX with > 64
 CPUs
Thread-Index: AQHZNLtcSdzvbrKZvkG3ayMpHrCIpK8J8X8w
Date: Fri, 24 Mar 2023 08:52:04 +0000
Message-ID: <MN2PR11MB40459F3C2E0444FB7B211095EA849@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230128011213.150171-1-jjh@daedalian.us>
 <Y9fbAqR+BDhlPb6I@nanopsycho>
In-Reply-To: <Y9fbAqR+BDhlPb6I@nanopsycho>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|IA1PR11MB7318:EE_
x-ms-office365-filtering-correlation-id: 3db7e2e5-08c3-4569-0efe-08db2c450a7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: heZ3FI/SzYwhtOTa50uhhy2ZoIJeV5DoOsr5OoWW6qfoo/jCnXpw/u2+nQJw+mFpx05vLjtiUaF0NeZ3gQoEUmxWP4TAzX2ewV/tV46dfJJR0deJxsICdOyLsSmppvl626yp3knkoGCbICaI7hWR6eUNPLl+rdRzx9rKZjPtdloO7AYGiWEhDfjs5VzRxKPCG/4zZn/X6696FWMv/J3OD8RWDhyLdLvtXRjweI2R5YeeMS6vK+O32zVEmyU8Ajyee0SzfRnu35Z1uYsaEFqEW4zS8xz+aldNlp8QMAzoq7zqTkGJyZxU40qrt3oeWWJoJcKQQ+g0LOy2y4q4G/UYWZpFu7+RaCsgW3K6hc2AK0s3658Rvb2NWhkHxozhTdPH1Gdng6DUu/FpiY7IvQByg0NG6GfzK9+6kthNod+zuzfQtx9/C/6yrYVruKVok6I4WSYzLl4okDEdM24pFK0WDgZdzq8ne7+2hK3VIutgw3pvbhlwE4TZupuI2pr4QniEjQ0sT+053dvloeptlW04dJlSJE0azMA6Y+snCmLZKaUpFcEDmTdmyK261+SDUiAUKv0AjKBoaGZvocwaBCepSkJF1inq02imRGwIAuFsMDDEEy1sHtA+MP5+QhZvBGNWRV7ryyyljUAffA/d6bqhQw4KJPIRakRFuid8ds/s5bnYPg/BZ78YZo9tsGlABlYd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199018)(33656002)(66446008)(52536014)(76116006)(55236004)(4326008)(8676002)(86362001)(64756008)(66556008)(8936002)(66476007)(41300700001)(66946007)(83380400001)(316002)(110136005)(478600001)(54906003)(7696005)(71200400001)(2906002)(7416002)(5660300002)(38100700002)(82960400001)(55016003)(122000001)(53546011)(38070700005)(26005)(9686003)(6506007)(107886003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fx9/TaeLtoNUHldZTbkPVhSfeRKTLArwRrCJT7FuYMm3C3di/xA1KLxbawey?=
 =?us-ascii?Q?vw+p9jDgH7cKLr1ByUdKkfalEtfBRCAgidwBndBfaXiLKDBT8r1xOAYa59JU?=
 =?us-ascii?Q?EqLwNK4zXPoMenlANNb5nka56BCFw1OsriYbwH9BJHDnIU1IX9MB49Ikp/DZ?=
 =?us-ascii?Q?t3u323+588k0MF0at75fqKI3NGkp39Wg8vz6hOIjacEn4iJ4e5kfsh9Rs1uQ?=
 =?us-ascii?Q?rUr8xH8oeHvQMKuiHx4nuhS5GGdz36bwfVRV4a3Yx77cVsJMP1ZbQQ9ctwkB?=
 =?us-ascii?Q?hDjy/veNkn46ruYkLlJ7QWtrNqoEXGyp0HnqhLKw+ukjoJ5zUv1rVsPK5V5V?=
 =?us-ascii?Q?uH+mBy0DMbig9pBF/+N15l+0OwRFavpe7++O8lAB7psSwb37Q9nYyIS8p7Kf?=
 =?us-ascii?Q?al9dreVhYDMQyX+X9xmJBFl36uIBIVOUh/+6IeNLMcZ+iDX1wQ/sX/3yWhKP?=
 =?us-ascii?Q?6bzgpe5Oc76j4TrnUJteKHV15n8dH5G+YfzOdM4gNoa63oQJXxaCLQbnzJhV?=
 =?us-ascii?Q?zGhBC9b/UcQX6wA+ncdVHNszzy+LlH6WMg39KkbbtcvyP/cDArxT/h7LT5KV?=
 =?us-ascii?Q?DlaGAXE4nTVuUbfFM3o5TG0VeSsSKBsSGGrShoSi/v44LwhrM7Z0NKnDHKOo?=
 =?us-ascii?Q?38tc1UIGHXkF7fKEAa2ZiDS9kxEOL3IraaTgg59E76SQpbItb0OBBeL14Vrf?=
 =?us-ascii?Q?CuHuJl9Yrq2UUfc3P6HPaeC8o3hVUtNzde9YcZCdNfqEfyILmqpGc0jn7R27?=
 =?us-ascii?Q?LnXcsTxlXnrPFmeIa6kjpE6vJduZrsUClY4jPHWb2rAHZIq9Rv/PpabHIz/b?=
 =?us-ascii?Q?aw7ZkduEQU0YIPCZXCQjx0CTT60eJ4NBldSMR6++Fe54K8GF/emmuB3jvOMV?=
 =?us-ascii?Q?0apC6leo8Q+v2/XUf4tNeJQoJtoYR1t713AcV18aA4eOsCgLi6h5Hv+zZIPO?=
 =?us-ascii?Q?dtTWc0sBH0QXQkCaKcCuWJNq+RI14HRZtUqbVn0v12pLzt56EgUFPg4hM+rd?=
 =?us-ascii?Q?1D64vnUdz0/c276r0dJxMWmKA7trrjQ43L+AtwX2TTa2n3hs5JBPblQl3wdf?=
 =?us-ascii?Q?+/lm1HBkT/utZSDgHVQut6DN65PROSzXbefkV4oYS+Mbwj2NxcdgzY0DeqjW?=
 =?us-ascii?Q?YjbdJ56/4GexnUgoHYrfjz5rY2VLx0JQvJksjfa7GwM3ZJHX1MK5LbCSBuNK?=
 =?us-ascii?Q?znZmL18IXqXJdbwkdqu299qiJ2DHlPJMn5IBZ/0RUFBE3Yp4plS48m+X9w6V?=
 =?us-ascii?Q?zZHYKO5nzTwFWbw/lV048NaJM75vrqWedtySsjD7WJJSj0rJ1aXBxKL4E1uQ?=
 =?us-ascii?Q?1rehvLFfOTNVq9c8ixahSXkSRDqAdMHE4+3s9Gu5nZqeSsM73iXrEnjFzRog?=
 =?us-ascii?Q?5SmJ8z93qmAyUeZOZi3WvrIJtWZvZzi42g9rtCHdjyP+EkVsinmh8RGhy1e+?=
 =?us-ascii?Q?JD8uMHIueqkUz5rf3OBtleic7jB3/SrXEjVRMsJIiOkzuxUJeXgEKPHz3ahW?=
 =?us-ascii?Q?pfpak6mGBwnDtyCoe+CizMUndy4tqGF3MtVTY6csn8hmxMffGXPF/y7gKlqI?=
 =?us-ascii?Q?kpPhtkI6fUIBqbkiTmWIjPSYCHfPQ2ra8W7qMpqd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3db7e2e5-08c3-4569-0efe-08db2c450a7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 08:52:04.3365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ytyf/s72R7RXQgsMVkaKIpwPa403pssqmyd6Gu3Zn/5K4BsOu0GUtZvn4Xk9EJtCyeJ8u01qBhxX3uQumOAAaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679647939; x=1711183939;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M3Cn69f9lp5cxIuO7GeNPn2T3q1BEQSrSVDlb5hsexM=;
 b=azcWttC9HaP30drwZvOaTq6hKPU7PvdOld4ULqRCbbyvNgtUrbcWbBSM
 GzSMfLbEQ3dMknqPw//XckmuLOMFB3ksy3aMRakDSzM1K9l2BaRzYsS06
 5jYHmYhVh5Z1/uBOWzbX0or11klQBTBYHok49Xh4skq1dc7DCiaRu05Nw
 lglaLvVv21eMcN3TpZFlffMckp04S06OPM34ETI3JOBpYkWS8YRlpfkSy
 /7RUxXNMETDyrKAxRhyUeJ873ekgwQYEF9LPg/x9cRTARovgWXtKVoNgv
 ARt28YcTGPwXYOU2LVnat164l2ILlIDNIH8/j3U5HP+Tm/RJas95K8zQC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=azcWttC9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Panic during XDP_TX with > 64
 CPUs
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jiri Pirko
Sent: 30 January 2023 20:28
To: John Hickey <jjh@daedalian.us>
Cc: Jesper Dangaard Brouer <hawk@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>; intel-wired-lan@lists.osuosl.org; John Fastabend <john.fastabend@gmail.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Alexei Starovoitov <ast@kernel.org>; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Jakub Kicinski <kuba@kernel.org>; bpf@vger.kernel.org; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; linux-kernel@vger.kernel.org
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Panic during XDP_TX with > 64 CPUs

Sat, Jan 28, 2023 at 02:12:12AM CET, jjh@daedalian.us wrote:
>In commit 'ixgbe: let the xdpdrv work with more than 64 cpus'
>(4fe815850bdc8d4cc94e06fe1de069424a895826), support was added to allow 
>XDP programs to run on systems with more than 64 CPUs by locking the 
>XDP TX rings and indexing them using cpu % 64 (IXGBE_MAX_XDP_QS).
>
>Upon trying this out patch via the Intel 5.18.6 out of tree driver on a 
>system with more than 64 cores, the kernel paniced with an 
>array-index-out-of-bounds at the return in ixgbe_determine_xdp_ring in 
>ixgbe.h, which means ixgbe_determine_xdp_q_idx was just returning the 
>cpu instead of cpu % IXGBE_MAX_XDP_QS.
>
>I think this is how it happens:
>
>Upon loading the first XDP program on a system with more than 64 CPUs, 
>ixgbe_xdp_locking_key is incremented in ixgbe_xdp_setup.  However, 
>immediately after this, the rings are reconfigured by ixgbe_setup_tc.
>ixgbe_setup_tc calls ixgbe_clear_interrupt_scheme which calls 
>ixgbe_free_q_vectors which calls ixgbe_free_q_vector in a loop.
>ixgbe_free_q_vector decrements ixgbe_xdp_locking_key once per call if 
>it is non-zero.  Commenting out the decrement in ixgbe_free_q_vector 
>stopped my system from panicing.
>
>I suspect to make the original patch work, I would need to load an XDP 
>program and then replace it in order to get ixgbe_xdp_locking_key back 
>above 0 since ixgbe_setup_tc is only called when transitioning between 
>XDP and non-XDP ring configurations, while ixgbe_xdp_locking_key is 
>incremented every time ixgbe_xdp_setup is called.
>
>Also, ixgbe_setup_tc can be called via ethtool --set-channels, so this 
>becomes another path to decrement ixgbe_xdp_locking_key to 0 on systems 
>with greater than 64 CPUs.
>
>For this patch, I have changed static_branch_inc to 
>static_branch_enable in ixgbe_setup_xdp.  We aren't counting references 
>and I don't see any reason to turn it off, since all the locking 
>appears to be in the XDP_TX path, which isn't run if a XDP program isn't loaded.
>
>Signed-off-by: John Hickey <jjh@daedalian.us>

This is missing "Fixes" tag and "net" keyword in "[patch]" subject section.


>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 3 ---  
>drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
> 2 files changed, 1 insertion(+), 4 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
