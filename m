Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A83E5E79A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 13:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBEA8408D8;
	Fri, 23 Sep 2022 11:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBEA8408D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663932804;
	bh=BkzSKxhCdbEwBTeXNnWwPgZOLs2BF43Jgibd3fefYrA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6raOt9Kzl3OpH5gUUf0xV8EfyqZ6yLHZjawEgUh+LuZCKP1J2CyAEz2aZNikg/fqx
	 7vZhcYRnAP+d1tpwmRjvXYBFVIC1j1xI5ypaD4lUGkr1C+AitrbxQT7GGqsepsaqjV
	 4K7tcXJDl+uSl29y/q+4HqfvLb4JqVWz4KfMatr5psrPiJO+2oJdoes05uD9JZNoZV
	 VYm1K3jNdTaRbhZ4cy4TheTFRCw2XlxF+GiStlzR46H6IuYDFBpmLLlQ0KG+IZuqPt
	 eGyR0GXdFsxexpqaxXlHYDyuh8DttDqw0cG5NpcWMK5q7BGuZDHyDoSziCIZ5540d/
	 tSy0BD7QhpKVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHwlQ9s0rkod; Fri, 23 Sep 2022 11:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 883F8405A9;
	Fri, 23 Sep 2022 11:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 883F8405A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12D0F1BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EABDD60DFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EABDD60DFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdD2mUsCK-Zp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 11:33:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2DB260D73
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2DB260D73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:33:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="302019156"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="302019156"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:33:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="762586431"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2022 04:33:14 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 04:33:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 04:33:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 04:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lPb21oxPn5TYXyL0IQxEVO6aVpnDQ55UbSex5KO5Tz8sJXNEh8M73oxwPyyTTHsz7/bdf7xN9TzI8JXTRompOjRomu8aOxObiSDrqcVvU+XVYlwE53y1iqu44IaWh9UjSbi+aEa/cV4mzumcTxDn95kREYhhwrHwxa4CnBy+zyyC/FkJex3GyCMNEMc9HtBeJIrzPKeUbmMX5z+8xVRrMPFJJ6og9/fuiqg+U6Qjjpg4yoVDOh73EgGmowxJOgxAhFQv+Rb94XL5g7fl8H7IpgwK5KvGm0LJBV51mRD81ehijQ0PobvgPjcs9SamMbmSgiFsFTqhJCVU7EuUAVOTLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GzVUouxj0FFPz5EUuksEV4MJ3qvVmUx4QOMM//LEFjg=;
 b=C74uwZC157iEpFoY6SuLN1lcp2SRk3SKbVBdueaHN6K3+0RB6mVmiotUZQc1xCk12hcop/uguBjl0wigZGVjW7WrBInsNNrcw4WfuqdndctY8gb0qztn6EHn8xNue4yAP2sDjt1s+gw2shzxvLiRJVjRvS8o2MjEDBpKPZctROHsR4l8cf2Ip5O7TvZg9V8BHwM9q/mzQfBBZV2R3quEleeVYt88GWZAF0mJWdbPKRnghdzySLJFKr+tu2a/okW8XBnh9g0PXX/Lq/Lsz4Opy2xRCihArrtr1GjMVmObHz5iPN/EPkim2IvGpRjdlV+R1IF70c9AxsbMF63NT7Ysow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB4177.namprd11.prod.outlook.com (2603:10b6:405:83::31)
 by DM4PR11MB5996.namprd11.prod.outlook.com (2603:10b6:8:5f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Fri, 23 Sep
 2022 11:33:12 +0000
Received: from BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::f3ab:ab2c:fa82:efa9]) by BN6PR11MB4177.namprd11.prod.outlook.com
 ([fe80::f3ab:ab2c:fa82:efa9%5]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 11:33:12 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc
 is running
Thread-Index: AQHYyPGMPENXFlICs0u/wqyiLHPlH63pTq8AgAOfjmA=
Date: Fri, 23 Sep 2022 11:33:12 +0000
Message-ID: <BN6PR11MB4177286E08048BFA626835C0E3519@BN6PR11MB4177.namprd11.prod.outlook.com>
References: <20220915105319.9843-1-arkadiusz.kubalewski@intel.com>
 <BYAPR11MB3367B11425669676377A9CC0FC4F9@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367B11425669676377A9CC0FC4F9@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN6PR11MB4177:EE_|DM4PR11MB5996:EE_
x-ms-office365-filtering-correlation-id: 8cef2f49-5ba1-4c42-2778-08da9d576603
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B+fkaVlnxgvWGYPx05agHEYel/Y1i/gikqhWqOGxO9VdeBF6g4IXg7y4KUx9lXoclhbZdLao/0j22Z7wF8I50cC0PJul3kgiZPauxklo32obMIey2wU4OwjiSSIiZh/7a9j6oNZgpadW2EtDNmUGSeyHK9IVcn2Or6GfhZLykzMBUgEzwpdPCqaPBx+4rHuIO8b8mvI8oX0PGk2mrE9Y5EcYWb+YqWqFYxuzNpb1g+PHlN4bK/NOhWG+mQMzeV3qVe9L1GMzWEkpMw/sMjBRc5LgM0KT+B4B6C+I8llqGiaQQVfTEDgfzjnnauOySrAGntHXj1J2gRFmwR2oH2RKK5eqWhCa17YRKqigy2CrO8VI8rSDihX8KcoofUPTuUousrVDLzdeiRQGGomduiPjuBNo0+9jrNRpGyQhjOTM4Jg9l6SsK/8WsXvLSFv7Fa1SeEyif5UB7g7qVWOonLPdzjObb6/zWyd1Ydrf6FOderzHCDWytgGzamR3XBubqwZWyxQU/q9PKHhKD2AjbDnqSjJLL6WaFFztk8ECn4rCV/QB+5lA7R6OGBDbrf2TTYa27n/DcXhkKQKXPX+gq0kOBtIfhHpe7bwSnu4Y71/RruuqYAiUYNeAwfXF41MF9r6DrIYgP6I94E2V4N0+dLTf/oYbt5RavdnJfiBG8qZ7ACRgJvaFX5kCVy6qfZJnG4OapwTlPuDR85tNq2iixeXFpaZnzjyLh1Hgu/T8BoWqrVpngT087OS3oq33KEQmU4YiI303If36rl3/aWz9NSSruQUf8rezIMtHP7DQcLw01EU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB4177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(9686003)(38100700002)(26005)(82960400001)(122000001)(8676002)(6506007)(7696005)(55016003)(76116006)(33656002)(64756008)(2906002)(966005)(38070700005)(53546011)(41300700001)(86362001)(8936002)(478600001)(66946007)(186003)(71200400001)(66556008)(5660300002)(66476007)(52536014)(83380400001)(66446008)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NYa/N9jR/FAxZ7Y/4AXJ15ZtwFQf+fLop3a1yTvyHU7awP3/2rIykY8vuvKb?=
 =?us-ascii?Q?gnA1lRi3BXM1G0v0r+ov8UvhGbtoblU/s0npCcWFNT1Y5jUqvndXFVf55iSt?=
 =?us-ascii?Q?BLQgcSu47srbj3gr0+GmWSnWvo+142+1AR0dchZuS3F41gr3LEVwBodwMFtl?=
 =?us-ascii?Q?KnUxkyHx1xe623MO0mFXs6iBL6IJ2U48WlGubf2oWeXDFrFro3t601VJxik4?=
 =?us-ascii?Q?jagSBM9l1hOU7HPxem46IVYbIfPjspylOQUB1EA965QYt4qvdrVsFZwlL8i3?=
 =?us-ascii?Q?lub+8gw9+hyrXtEO9lwz10gQWWi8I2FA8d83V1o2p7chvE7/Vq8Oh+hswXr1?=
 =?us-ascii?Q?JLki2MJVKUmuZqP4ZON8GIAHpuYA6YqrXOwDXGZvlg3bRxWLaEKgq8Gukla0?=
 =?us-ascii?Q?M80DvySXTlCgz5N7EZYoCvPV8ELlWqngmSw1tIdlSFOYUJ17VcntVc3c82kw?=
 =?us-ascii?Q?0exgHQ1ByTj9sYkkx/sgTmbXPIMmiJ0m6Xdyj/1YJWAEmLY7a1Ck94eqLQK8?=
 =?us-ascii?Q?OXppT2ZzyJVrGEu/df0u+MUqqFm89/VaXog0SKD8RV7giDY/yqyc5mXSRJfH?=
 =?us-ascii?Q?VkmGDIqu2svVdkPZ5230Lk7PjsrPkgUMbZVh1uMa5R+VBHnQbCiVgppICNzP?=
 =?us-ascii?Q?YOmLIFhjIc151dx0AxtI43sGLkqa/oE3wzB9DYS07Rb7S0hlQUwcSTBb5Faa?=
 =?us-ascii?Q?vVVHcYIbEOXr7DwrMPXHLZt/3dhs+OhZvpq8pCVPCZNx3dEfQd6n1H2if09t?=
 =?us-ascii?Q?jLTJVRN7TCiqWw476RGzy01NW5jtx9CqHLSl88pN16JN0YVf34MntnbiJaGr?=
 =?us-ascii?Q?LwY/a8Sfq7bIuQcEd34HEhIsUOHlRu9yf1O5yjZ/JW0PII5E67o5QqcVPKGT?=
 =?us-ascii?Q?dw7dj0xEed3qF8spX72OlR3rnrTGY21EysvEq4BenR13ESCalXvoMY2OcaXp?=
 =?us-ascii?Q?GDGvu6vNOK0hYCQ2tdcD1n2pxzkL39rD8c2T3KQSXn2E0nXgo6Af8UPcPQbe?=
 =?us-ascii?Q?KE0PTa8S+fMtwh2SQycmShOpBLBtlpjEtSAvjf44SySiy6NXl30058Zy3t6a?=
 =?us-ascii?Q?QLQFohb1rZqeX2E0yb+B1uVwpsTHJV16Vi616wMhaZHqUmbiw+hT/IB7LDRI?=
 =?us-ascii?Q?i0zEkXhWqQnqqr0n9Sf6oJ4t3zKNpHQpTBQBsehYRq/nGW8ZH3Yc4PGkscTi?=
 =?us-ascii?Q?S+pcEhGb0SJR8crgqQCATXxYzwbjwUMbmQHwVuJIFYYWR28t+65qIslCg+K8?=
 =?us-ascii?Q?zAI4pDVT/e8twXWJi82QORatEr0yD0niQN1sLGGurOW38725Iq6ikzuNnfac?=
 =?us-ascii?Q?cjciRFdNw5hAo2L6uSrzIWL2TtiWl+u11z9gU5JWvj78ygDjNiYJlt8RWIFq?=
 =?us-ascii?Q?VIT/WDMSpNmtPAkaKfFl4WawiW2joY2GjEww5PaEYr/JS8tB8iqCSWz28Ly4?=
 =?us-ascii?Q?JDOEDPBTZ37U5xsTiqe/UjBtPYk1yRiVUC8pt/QcI5El0KDwXwfiDMorzFnG?=
 =?us-ascii?Q?uO3ku7My03RJA7+MajLR7JQvAnYl0kdUdMVTlRvdURv/tX2T7HJb8k1kfoV7?=
 =?us-ascii?Q?AU0ptTyDRmV7XBMkrCbMRO/ue+v9+ig04cPHKym8bkHojZKuIR99eMPZn4R9?=
 =?us-ascii?Q?3g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB4177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cef2f49-5ba1-4c42-2778-08da9d576603
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 11:33:12.4919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2o6fIWt1M2jJwSlYaTrhFbguLAGo1hDOhUk2XVyZjjSC3rncyp7AW3mtCv5bv7QYD+y9g7fSfPaM6gPWC2xEqEi3pcto3NIaLgHpxa9Om20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663932795; x=1695468795;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VGnLLjXtmokKPTQqgwkOm4na4Z/EH0pldattMFqu0/Y=;
 b=ShU78XDds1h3+yUEflvRCiXVjpHHSAxRpBXzLZK4jAJss0BASktejefc
 Jzz9ZsS+F39rtWRAdvg39EkgT8qzaqq2zRE3PJhZHtMdqtYCccy090k/T
 QeMJdvAlF0TBLckjSfGcze+OoO94+ZGilqRbL2YPSDQgHZnUfYqPhFwzv
 oTxtoDQ75JYn9w7LgwdG7Rwmzzz3Yu2q1qbYXqLNsIooCqoNe9V+JHFi7
 KIJNU9XLN8djKHmAUSBDzlxayoggYZ4iw7FqTNRwTRRVQmHfRKBz39NdY
 mNRJ65lHXwMTOVKAqxohdDdGDtZb0tz/j72rn/5dWVFQ34ran2kfgh5MK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ShU78XDd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc
 is running
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G, GurucharanX
> Sent: Wednesday, September 21, 2022 6:12 AM
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Arkadiusz Kubalewski
> > Sent: Thursday, September 15, 2022 4:23 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH net] ice: fix rmmod crash when ts2phc is
> > running
> > 
> > Reschedule a ptp kworker only if it isn't destroyed.
> > 
> > Previously, ptp kworker could be destroyed in ice_ptp_release function and
> > then service task function call ice_misc_intr executed on time sync interrupt
> > would try to schedule a ptp kworker, which results in a
> > crash:
> > 
> > ice 0000:01:00.0: Removed PTP clock
> > BUG: kernel NULL pointer dereference, address: 0000000000000004 PGD 0
> > P4D 0
> > Oops: 0002 [#1] PREEMPT SMP PTI
> > CPU: 4 PID: 0 Comm: swapper/4 Kdump: loaded Tainted: G           OE      6.0.0-
> > rc3 #73
> > Hardware name: Intel Corporation S1200SP/S1200SP, BIOS
> > S1200SP.86B.03.01.0042.013020190050 01/30/2019
> > RIP: 0010:_raw_spin_lock_irqsave+0x20/0x50
> > Code: cc cc cc cc cc cc cc cc cc cc 0f 1f 44 00 00 41 54 53 48 89 fb 9c 41 5c fa bf 01
> > 00 00 00 e8 87 ff 64 ff 31 c0 ba 01 00 00 00 <f0> 0f b1 13 75 0b 4c 89 e0 5b 41 5c
> > c3 cc cc cc cc 89 c6 48 89 df
> > RSP: 0018:ffffa8d3001e0ee8 EFLAGS: 00010046
> > RAX: 0000000000000000 RBX: 0000000000000004 RCX: 0000000000000000
> > RDX: 0000000000000001 RSI: ffff9a4cb1fd0d88 RDI: 0000000000000001
> > RBP: 0000000000000000 R08: 000003ac0f15e9cf R09: 0000000000000000
> > R10: 0000000000000000 R11: ffffa8d3001e0ff8 R12: 0000000000000046
> > R13: 0000000000000004 R14: 0000000000000000 R15: 0000000000000000
> > FS:  0000000000000000(0000) GS:ffff9a4fb3900000(0000)
> > knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 0000000000000004 CR3: 00000003d740a006 CR4: 00000000003706e0
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400 Call
> > Trace:
> >  <IRQ>
> >  kthread_queue_work+0x22/0x70
> >  ice_misc_intr+0x23e/0x2c0 [ice]
> >  __handle_irq_event_percpu+0x43/0x180
> >  handle_irq_event+0x34/0x70
> >  handle_edge_irq+0x9f/0x240
> >  __common_interrupt+0x66/0x110
> >  common_interrupt+0xb3/0xd0
> >  </IRQ>
> >  <TASK>
> >  asm_common_interrupt+0x22/0x40
> > RIP: 0010:cpuidle_enter_state+0xd8/0x400
> > Code: 49 89 c5 0f 1f 44 00 00 31 ff e8 03 29 90 ff 45 84 ff 74 12 9c 58 f6 c4 02 0f
> > 85 0c 03 00 00 31 ff e8 9c c2 96 ff fb 45 85 f6 <0f> 88 6e 01 00 00 49 63 d6 4c 2b
> > 2c 24 48 8d 04 52 48 8d 04 82 49
> > RSP: 0018:ffffa8d30010fe80 EFLAGS: 00000206
> > RAX: ffff9a4fb3900000 RBX: ffff9a4fb393b800 RCX: 000000000000001f
> > RDX: 0000000000000004 RSI: ffffffffa5f7f754 RDI: ffffffffa5f5c798
> > RBP: 0000000000000006 R08: 000003ac0f15e6d3 R09: 0000000000000000
> > R10: 0000000000000400 R11: 000000000002e921 R12: ffffffffa66a1f20
> > R13: 000003ac0f15e6d3 R14: 0000000000000006 R15: 0000000000000000
> >  cpuidle_enter+0x29/0x40
> >  cpuidle_idle_call+0x138/0x1c0
> >  do_idle+0x79/0xe0
> >  cpu_startup_entry+0x19/0x20
> >  start_secondary+0x10d/0x130
> >  secondary_startup_64_no_verify+0xe5/0xeb
> >  </TASK>
> > 
> > Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> > Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > ---
> > v2: add target tree prefix
> >  drivers/net/ethernet/intel/ice/ice_main.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> 
> We are still observing a kernel crash on the first execution, but able to remove and reload the ice driver from the system unlike earlier where we were not even able to access the system.

Much thanks for testing that - we would investigate what is causing this again.

BR,
M^2

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
