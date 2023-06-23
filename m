Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8715873B3C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 11:38:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCDF6416B4;
	Fri, 23 Jun 2023 09:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCDF6416B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687513131;
	bh=DwvPV6a0WB7Zj3Ekab7t0XQMs1Nr3IaMgXqwVgh8xRg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=92HX29wS5i0Yfhil16ae8hqS430yb2gWUfUXgqcjq8T5JWeg2e6ykg2WB10buMF1x
	 eqoXHmleY46ZfqPimRqcejrMYzLtTxEuNNBoQ58IyhRZGyFE1lTMSXaYQn7sxtiq4x
	 +TReBzARvDSPOfdEH4GorRkT5Gtedik32tSJPNQtIcmcEuZiz52GIZKdK3JqKOa8z4
	 fG/ympIYN9gvi2482oDhUrlREMHRJgZJJPbflU27xjZYjZAPbiBXj1uasOBHLRDRZ1
	 QndjgRfyAlaHnW/zbp+/Y4/VQSZyHfaKqalrtVuACIQ4EH5G34TQAsc/BkcDk9JDl6
	 N2bT90+xlkROA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YwSUjW48z8k1; Fri, 23 Jun 2023 09:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37F2141604;
	Fri, 23 Jun 2023 09:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37F2141604
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2C3D1BF396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 09:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87AFD408B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 09:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87AFD408B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tu-KskEEwLzz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 09:38:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 588EC40201
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 588EC40201
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 09:38:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="341064753"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="341064753"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 02:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="839370178"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="839370178"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 23 Jun 2023 02:38:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 23 Jun 2023 02:38:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 23 Jun 2023 02:38:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 23 Jun 2023 02:38:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DjirBsG8Lj3ksGmOoVro2ZhnXmzsLH3cY3sTVn1I8JipJb2/JCVaSVvZ4hJuyoojZHwM974cU3JDiFwM/cLdXaPhSDW66iLhNiGuRsoyNh6fXNzvQg02ARo+BPasyD67eZAtqSdu5LbDhM9j5YMmO7iZ2xt5T4UipUjz7MhazbDwn5giUnfd1/D51Rv0JPyDOGwicNyyykp7HUcIpD+GtVue7SvdP6SVzsYwADGJhwu+9OYhEn+Tzfmiw9gailhIAfC5YmgqmdtmLjvHNO9uQyJYyNM7k84+aJIbgbikMGEUAKPClVRo1FcjedUSz+1IhW/loPI45q5H/OTC5ICmBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Re7LkH8UvwozqPbByYnMMefmwGus49jOQSJvbmlHJ74=;
 b=a6UKzjxPqfPKqtegaPFD92kRifsW3UbSMluVKBQocv9cL0JClC2tsLj1jryk48aNjce8+KHkoFr2L96enLPN1XAxtVoikYxsQYEJ5M8NHev5M9vVrvU2I5aPMAt/KITW561lXNri+/xUzCU9VyvTLR8G3A1yAaMcg9MCG/DRoQDcGeYUL6g/POqcolF1PMW1xBu6GSwCbcu7fG4UYXiAhpaKA3oL663HK6MTi8NOdwL6duFUphj7Z6EWro19WzoqX0+eKTJPK1FALv+WjQjJQngQGOIX3eumIl8nADACHk+ZGOkbobb4OhxfLuTWSYDAAkj9EerXX8IQsK08eXbZ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7764.namprd11.prod.outlook.com (2603:10b6:610:145::19)
 by CH0PR11MB8167.namprd11.prod.outlook.com (2603:10b6:610:192::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Fri, 23 Jun
 2023 09:38:24 +0000
Received: from CH3PR11MB7764.namprd11.prod.outlook.com
 ([fe80::87f3:59ea:c54d:1bd0]) by CH3PR11MB7764.namprd11.prod.outlook.com
 ([fe80::87f3:59ea:c54d:1bd0%3]) with mapi id 15.20.6521.024; Fri, 23 Jun 2023
 09:38:23 +0000
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD
 and IGBVF_MIN_RXD to allow change of rx/tx value
Thread-Index: AQHZo6YtOB4EkallEU6l8L8zq1VZ+K+YCwFg
Date: Fri, 23 Jun 2023 09:38:23 +0000
Message-ID: <CH3PR11MB7764C3B7F4F66A4B65FB25C3F923A@CH3PR11MB7764.namprd11.prod.outlook.com>
References: <20230616114729.27926-1-olga.zaborska@intel.com>
 <SN6PR11MB3229C8E5C13B17847D2F2EBFC65CA@SN6PR11MB3229.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3229C8E5C13B17847D2F2EBFC65CA@SN6PR11MB3229.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB7764:EE_|CH0PR11MB8167:EE_
x-ms-office365-filtering-correlation-id: a2aad738-a2d1-46a6-b34b-08db73cd9685
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c5+ruVsX9GnWKDSrFkurRIz2kBXphUDuC7RFPTZieJN4Vg4CPmp+BdY6UEhY2yj2lLag7Ib3WOVvRjCwgP/Xy9x0PW8aARmfZod2FM/MXbkIz/+0T0laF5dYmPE0x1IdHhafaJ6hXSuvIJxI1vTVd0LhTgSf8lRVjHdEHJhn6bT2xtw+qgEx1g/pLHVafQd/TDLVhYgZ+IAroa29q/C3Vctr0YKdErh3FSFIKuW9c9Bxc1/Cadn4pllDIb6jwonBpUukAF5pKDH2HGpY5ol3/JWWpCKS+TUPzYsM1KTgS+1Ikjg73KdAv5wn6gNbfx0UKbGfEuUjw5LZNON3t5XiqWhvj3v+4X1KI1vs451YSVz+NkwrdyRLb22Ow6zZOKjjvD9xtJI+wjZvz19GXdM1P8aHR2T8gariFvrEsJbMYqJbrBQxS1JgiKJd8qhvjWSw97Hb2EdEbev4p1LjY3RtH/Jcq8MoxAQkKhE9jgYY4L0Z8/HNwwxIJRAtng48G/+B4Kq1/RQ+rpoqMmRIlYhZ9rLup5EsHINZb0Z/Mo6Uqz5NWcfBLZOTHb/TOVRcEtr5eJ4usWec8+khxxAQyDIRuE5FtDOgMCiEGYn5H1ahYZ2LHWraI4VmTB4xduMcdcbh3RGVZRzHCNrdNj//IWIsTw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199021)(110136005)(478600001)(55016003)(26005)(71200400001)(186003)(9686003)(6506007)(53546011)(7696005)(966005)(5660300002)(33656002)(2906002)(76116006)(66946007)(86362001)(8676002)(41300700001)(66476007)(52536014)(8936002)(66446008)(64756008)(66556008)(316002)(82960400001)(38070700005)(83380400001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NJie8a9oCTSVyR1KSv9lFO/T+wcdX0wCJ9L2+UzdrY9fcBCIYqNuL8r1qbjW?=
 =?us-ascii?Q?NQfJEeXNzZ0N5Qep1VlLQFb9T2F2iqVpmiRqndekzzhsCMa+HkgMR//P60UO?=
 =?us-ascii?Q?Q+qZSCh1z7wkQDE3z6qLp41x7ZfRhDcDjeCmUuTxxtrF0pChG5hkBD5Ecl5l?=
 =?us-ascii?Q?0zgHg/PhCqnpZVleJiqV3qGt6+e+YB4CWz4xL8Zym1EAkR6TLnGSFb08Gz6w?=
 =?us-ascii?Q?xtZ4SvblPXZuq1Lv4K4l9ErjjmE2CKhCCNxd1fyxNVGuVyA9Qm5/gvEw2jh1?=
 =?us-ascii?Q?GN6H2bL7QbkvOGn0wZCpcaInfXQFlxUx7bXF/eeVLgqldrVkm9HR24FR851f?=
 =?us-ascii?Q?WCqYucLErLqJ4kUbOD+VceT8egccJDdEmdSRCNaJe6RrN+VU+kB0vi0dVt7L?=
 =?us-ascii?Q?qOttcMyP9HTeYP3cBzmt7F13lGes19XJsBs2sRluFrDjMHh3Gw5TX0qCMqcc?=
 =?us-ascii?Q?kTBq3s491DYnqNyZHw+T0NIfwYYDDZvlLVY4XErkjqKJIuyaYbEDwwylNcHM?=
 =?us-ascii?Q?9KUj/jtuCqESwWmHCTAmHUUNobbophNQNVDLnv0arJW0f83kwUyH8gGDkA6h?=
 =?us-ascii?Q?8j4z+B1SDIhY4RZ/e7lWVxERw9s2uwcuHeubDPvSrz/3a1ZRTXQTJTi48Yrz?=
 =?us-ascii?Q?eoDIBoPHK+4DuN8BqI/WWKESc/5w+fhLaQPM8D7dszUlJpgvcqlnZ6NXolHf?=
 =?us-ascii?Q?ejD3SvY/FLCzj57FfpkKDxhRHM7bxYNmQMc4GxlBsqnEkhdJ+0p8I69VpnWy?=
 =?us-ascii?Q?wadmijRzcslMRjMoTf+JfTzU2kF5LnIlL+VwUZsSTsTDLBrIiPBf4rVvgQpr?=
 =?us-ascii?Q?/p4YYizABcmeSOFFdsBNU61LkTVte5VI3ZbqyxTm/8h882caZ/lvs8p+L5G+?=
 =?us-ascii?Q?Q73rX7e/CB5vy/NoTece/8QQKgAVituaZU8OeE+Kr+s5a31KmO/as4ydvjsR?=
 =?us-ascii?Q?HUSvBWTReYm5YtDwUWyrL6NSPP/t/DJvABVh+gVz1uMolf1FCZFHYj4kYL9u?=
 =?us-ascii?Q?H4Hs4KmVVL+ndxLpRUWCIdMh1Uz3YNTtL71b/FlsUpMYF60fgUbh7DU7U6Jz?=
 =?us-ascii?Q?OE2DOz/Vb2wX7qoxqYJYDnCxxfxM1Do/7LGodQUAveXXGsLUaXsIrxd2Z7T5?=
 =?us-ascii?Q?RqJSFAUW3KvtUFcCoz5Im/BNFnSfIbaOTODE8W61qa1TRbphP7trwfIWJQ89?=
 =?us-ascii?Q?ir8ss4GIGEIWLXyrXN3759FIuYEkyfr5WLRuc0oWBbktJiFq1IjfzwTnWg97?=
 =?us-ascii?Q?u432Co4eRF0JnytSIpetSvnKLNZWcYN/A6wMiGbX+UWFSgIAPAdBcTe+CQRv?=
 =?us-ascii?Q?ks4I5cNnVFUasftfY1szzWnZLGWGdY771amZhjpBXtuJQyto8XoTU7jJ1/ji?=
 =?us-ascii?Q?x2q4+eMhHdoUpVPyUWv6+iIgLT9MbgKOynST4kkAHWNxOmAaWZzdjcwy1gmU?=
 =?us-ascii?Q?/DBF8cF5nAezVHODVyAHYNimrvPv6gQFR3YtX1/AYH/OIPXQWg7LmzLHX/Uz?=
 =?us-ascii?Q?g3xYh/GCzZRJrEXhS1IDAR2Ab/sVtHvWfWRONDyMDref2obrwoCgSIITmeNm?=
 =?us-ascii?Q?RF6cV5lAgC6pjGvsRCSfxIAJduHVOGGO4mpDf+le?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2aad738-a2d1-46a6-b34b-08db73cd9685
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2023 09:38:23.3600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f5r1Zkcj9cBaoCEUG9wAZbseGWpQTXuI/wg4dNFXBE7ZSvYVBgxQ22wfNQHWDEHhmb+j+RxTxbH9JTWuhat5cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8167
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687513122; x=1719049122;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version:content-transfer-encoding;
 bh=m0Eqp1Jq0IuaGh2a5thW7wfJMn1ZMP4RqOiGq6TVwio=;
 b=Q7NWDvlgkpFXhiD17exNxjWD7JAAAfScvAy2RMQ5pr7Dx6uvBJUfd+MZ
 BQH9JrohjYorNj0OsF2tgnJ9fIdNmKULLGknl1P9T9V1/ySEp8K7Cj8Wc
 A4aVYt+aQi1q4GRssjyGIpKgl5lZdIpYV96JVO9QGLYyf91mXv5HENgLM
 6ZK2WkTq7JxFJq6GTQzWj7t8twhQrg1mrbgWnjn1mYDui+oYwfB2FomMJ
 7ECplzgBwHl5PhVl2bqWX8/qK7n3OqIKTXlylJKZzMjPJvXNUqxZokoLV
 5Ky8qeroRlmfK8koND3Y1KkAJP1WVEp/wUfwywq9LOnhJxasc6gskG0bb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q7NWDvlg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change
 IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
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

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
> Sent: wtorek, 20 czerwca 2023 20:37
> To: Zaborska, Olga <olga.zaborska@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: Zaborska, Olga <olga.zaborska@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> > Of Zaborska, Olga
> > Sent: Friday, June 16, 2023 4:47 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zaborska, Olga <olga.zaborska@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change 
> > IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value
> 
> This title seems a bit misleading as I presume changes are allowed, just limited on the low end.
title will be corrected in v2. 
> 
> > From: Olga Zaborska <olga.zaborska@intel.com>
> > 
> > There is currently a bug where when setting the rx/tx value between 64 
> > and
> > 80 it automatically sets to 80, this will be fixed by changing 
> > IGBVF_MIN_TXD and IGBVF_MIN_RXD
> 
> Any insight on why it was 80 before or why 64 is now ok?
> 
> Is there a side affect other than not being able to set below 80? Since the referenced fixes is from 2009 without anything reported, seems like it'd be more an improvement of allowing smaller sizes than a bug?
Based on the commit https://sourceforge.net/p/e1000/mailman/message/19194160/ it should be 64 in every e1000e device, igbvf was the only with 80. 
> 
> > Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual
> > functions")
> > Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> > Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h
> > b/drivers/net/ethernet/intel/igbvf/igbvf.h
> > index 57d39ee00b58..7b83678ba83a 100644
> > --- a/drivers/net/ethernet/intel/igbvf/igbvf.h
> > +++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
> > @@ -39,11 +39,11 @@ enum latency_range {
> >  /* Tx/Rx descriptor defines */
> >  #define IGBVF_DEFAULT_TXD	256
> >  #define IGBVF_MAX_TXD		4096
> > -#define IGBVF_MIN_TXD		80
> > +#define IGBVF_MIN_TXD		64
> > 
> >  #define IGBVF_DEFAULT_RXD	256
> >  #define IGBVF_MAX_RXD		4096
> > -#define IGBVF_MIN_RXD		80
> > +#define IGBVF_MIN_RXD		64
> > 
> >  #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
> >  #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
> > --
> > 2.31.1
> > 
> > ---------------------------------------------------------------------
> > Intel Technology Poland sp. z o.o.
> > ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII 
> > Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 
> > 957-
> > 07-52-316 | Kapital zakladowy 200.000 PLN.
> > Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu 
> > ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym 
> > opoznieniom w transakcjach handlowych.
> > 
> > Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego 
> > adresata i moze zawierac informacje poufne. W razie przypadkowego 
> > otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale 
> > jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest 
> > zabronione.
> > This e-mail and any attachments may contain confidential material for 
> > the sole use of the intended recipient(s). If you are not the intended 
> > recipient, please contact the sender and delete all copies; any review 
> > or distribution by others is strictly prohibited.
> 
> This footer needs to be removed.
> 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>

-----Original Message-----
From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: wtorek, 20 czerwca 2023 20:37
To: Zaborska, Olga <olga.zaborska@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Zaborska, Olga <olga.zaborska@intel.com>
Subject: RE: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Zaborska, Olga
> Sent: Friday, June 16, 2023 4:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zaborska, Olga <olga.zaborska@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igbvf: Change 
> IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value

This title seems a bit misleading as I presume changes are allowed, just limited on the low end.

> From: Olga Zaborska <olga.zaborska@intel.com>
> 
> There is currently a bug where when setting the rx/tx value between 64 
> and
> 80 it automatically sets to 80, this will be fixed by changing 
> IGBVF_MIN_TXD and IGBVF_MIN_RXD

Any insight on why it was 80 before or why 64 is now ok?

Is there a side affect other than not being able to set below 80? Since the referenced fixes is from 2009 without anything reported, seems like it'd be more an improvement of allowing smaller sizes than a bug?

> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual
> functions")
> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h
> b/drivers/net/ethernet/intel/igbvf/igbvf.h
> index 57d39ee00b58..7b83678ba83a 100644
> --- a/drivers/net/ethernet/intel/igbvf/igbvf.h
> +++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
> @@ -39,11 +39,11 @@ enum latency_range {
>  /* Tx/Rx descriptor defines */
>  #define IGBVF_DEFAULT_TXD	256
>  #define IGBVF_MAX_TXD		4096
> -#define IGBVF_MIN_TXD		80
> +#define IGBVF_MIN_TXD		64
> 
>  #define IGBVF_DEFAULT_RXD	256
>  #define IGBVF_MAX_RXD		4096
> -#define IGBVF_MIN_RXD		80
> +#define IGBVF_MIN_RXD		64
> 
>  #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
>  #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
> --
> 2.31.1
> 
> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII 
> Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 
> 957-
> 07-52-316 | Kapital zakladowy 200.000 PLN.
> Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu 
> ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym 
> opoznieniom w transakcjach handlowych.
> 
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego 
> adresata i moze zawierac informacje poufne. W razie przypadkowego 
> otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale 
> jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest 
> zabronione.
> This e-mail and any attachments may contain confidential material for 
> the sole use of the intended recipient(s). If you are not the intended 
> recipient, please contact the sender and delete all copies; any review 
> or distribution by others is strictly prohibited.

This footer needs to be removed.

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
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
