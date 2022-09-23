Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7DB5E7919
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 13:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70EB1409C8;
	Fri, 23 Sep 2022 11:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70EB1409C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663931349;
	bh=hYzpMwcw95JeOVDWx7xc4SH4Nx5+rhYnzhWG9i0FgUU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QEO4O5vPmc8kGcdr/MxlIP3bcruB8eOa9acfhfFLEqmlT8J3DTJbTdSYgObA75I+0
	 v3iA0EKFLZnFBo+53SZSmAn0SxaF72v+4KQ35WbCIGwMs9Q8ipbyOkviw/U/rUlLlp
	 7IkzNNPmdTbYIQR3OPJJEyqX1ik5VxsZS8vyfQxVp8xzS4BkuAkd3nC7crY3D5P/Cz
	 4luOCJgVZmO32Pg2i+2zrbcG924Fp3lB9B9XasjM1TMJyZhOwxouiWIBJKljBlOvBs
	 ep2DF/nj0QgcsqNZOGuYRRN4/aK9kvqV/8rp3I3AMdyjAl042LzPl2CokmFH7Pc7aZ
	 n6JDK5SdNUDpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CBHVOvs_a4ek; Fri, 23 Sep 2022 11:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FCBB405A9;
	Fri, 23 Sep 2022 11:09:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FCBB405A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7981BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67D2E408D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67D2E408D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7jPO7ITzryU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 11:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39544405A9
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39544405A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:09:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="300553434"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="300553434"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="724092204"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2022 04:08:59 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 04:08:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 04:08:59 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 04:08:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DyyzMBB4z1Vd2G0dazmo7RYoamVKDJ7AVbwr+9uiWn8NyA8OPPiLdo0FPERsA0oAwXzvTcz1Ij5ba7EwZd5XW9l2d6EwLEMIJjCLOm2B6BNrnPsWBpqLmXQDmXrindIjONrDuNSY6ZdfW8FviE6Bzsq6Ti8eMMlHWGXUm6nlTVkSqJMtHxnJsvtZLqUtqf3v1amLTzKb4FQgeMPcvxHsDwKdDDhTETVJOPxyVyObV2SE3swb1omW1NGiNK1+mjFocKFLv2/0x9EjqC+fCV0zcOpIoLqaOHrDF39ucAeA43aUXHkKfiWe3ZAABL7+r5RlB/chPdFVGjcpj/hebkawQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZJ5aWszPoH2794uCQ5G8KprlBzArsih9Q8oytPrqu4=;
 b=YTA3qdPattkmE1u8mmZxettK+Nq8ajtWiAu/8eqDoEJMbX5jzkfdDVC6jo+OVNyjdcpYLjKv+ee+29D//urjqQfEMvmkcYn+sr1TrFIw+uV8f5NxWNnXP/bmbYjhHjjvA2Kwg6qFBC6OGynY+2k12EESVDKoo2vwdeHnbkAh0MvPEF2yh0b43CMJRPwIy9FqRBGvSFKYUkpY4yW1unhu3Q/mM+j8dpnQVpQ4ZM0/6kpmrx8iPk0MeppHkALLyAoPJzEtpY9au3YN6v+ErzRxiORbpkzcFc3Dmscd5UsxxJyH6Am5fb/td2fSWqNl6q8lDn+52CtWx84MgPAZXTJkbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by BL1PR11MB5429.namprd11.prod.outlook.com (2603:10b6:208:30b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 11:08:57 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::6c59:792:6379:8f9]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::6c59:792:6379:8f9%4]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 11:08:57 +0000
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
Thread-Index: AQHYw3F3SB4gnbAAtU6ukD0kzKh+KK3s7KAAgAAFKgA=
Date: Fri, 23 Sep 2022 11:08:57 +0000
Message-ID: <CO6PR11MB56032DFE65C714E73E239AA7EE519@CO6PR11MB5603.namprd11.prod.outlook.com>
References: <20220908105427.183225-1-michal.wilczynski@intel.com>
 <20220908105427.183225-2-michal.wilczynski@intel.com>
 <BYAPR11MB3367A7B2299CE71A0BB878C1FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367A7B2299CE71A0BB878C1FC519@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5603:EE_|BL1PR11MB5429:EE_
x-ms-office365-filtering-correlation-id: 7e6d7d1c-c34a-4e8c-5ace-08da9d54028a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fpWaDKHiCG0HiMrZm50Wpi1m0czXdGtiFFOQAyhIR/tiCCj9066EoR4Dt7fct0FEl0YinkgIjdw9FcYG2ntvpcKxRGpx0jWl2X6tVtTmdy5I1Ule0esEyTQfrHAN7p2A9xw9ozYK3vM5IpX3KVaMQQSfCX1Zg+9fnDQIO1zv1PChsIf5z8qtNEfKURvJ9RLvjdUTmh/PzTWK0WJSz5bgbZbs5OSkFY6xk7R/p1ZBXQ4bOT/YBFL+rNRXsgmc3smBjwBgIdfobUKbnoaV082iIBpSlyKk9u02f/Hm/iL5IHmcAbHKLR1HmYLE6mzK1giwPmPx9zhClPAcc2yAyKbAP+i1y/c5mx0istNNFu7Un/5kDk7Fkrs29C9bjLvhmfg4e3R+iMlEQwZwOewFsrpCsFo5cIFZsZZOodSyK6Lb+3SsGPoDZKWE7wwpiZM0iCAlGfw6CCWTC0INzNkUUWLxXzkidrDMRwf0y4gUXNtlDR/ANe0zOeDFrhKj3HIc50EjoF4oYTe1f9IShkxEkJfRNUKgtXHJB4pQG23BYCtsTd+k+mtdrbDCqNH8HZa/z4iiOLdQUk0ZAjvQo6nLZoCuX5/i/VsDEeWITWTgInwdwFP1UsTczXsoFYCMubPW7dB4Op7lMPCUzpX3SF6c6sJlFQ/izALsDAQqYQA35HmAlyCMN6H3tFcqKHRaOXeCd2P4Fzgwj8qoBUh5roACSdf5iByNk1oiIatqDIAx18eT3omp0KfsjgYY9eS1CidcUxCd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(376002)(346002)(396003)(451199015)(53546011)(33656002)(5660300002)(52536014)(7696005)(8936002)(38100700002)(9686003)(26005)(2906002)(478600001)(316002)(66476007)(82960400001)(41300700001)(6506007)(66946007)(64756008)(66446008)(66556008)(8676002)(107886003)(76116006)(4326008)(186003)(83380400001)(86362001)(55016003)(122000001)(38070700005)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?OPxP41A8NOOvmxAQdDq2LdjWOOtmW+ZuniNnjeoe00/TUlY6LSAkufuR+n?=
 =?iso-8859-2?Q?IOH+FifkfZPsJXhdbViOVD/Uh71wOGoNw6bY+d8bFPK6iCau1pgNYyCHWh?=
 =?iso-8859-2?Q?SatFP0YcXTSx+dXDFw4SqwVNIiUnyJqaeHCrdqmdi4uIfv+oLQGG76MFv5?=
 =?iso-8859-2?Q?py4X5H4SWuKhDlJGPycZDR1zSdFus3/9v6PGBsvfdaB22l6UR6IADPxqrp?=
 =?iso-8859-2?Q?hKhGM+tV/PjIecAP3QEDzkr7BorN+gntfYxG41Y59+7OBokQrQ7x/kTeGG?=
 =?iso-8859-2?Q?Ja2+ArfzG4q4GeFp738ARFTF1n5b9H/DkdnPIeEPuy+EA+LvMj/W7PEsDT?=
 =?iso-8859-2?Q?XWwC7kwTYS/yxOloXnd/EOhmuQTAO9UamH0Jy5KChPtKVXbwdk4ekdSY3U?=
 =?iso-8859-2?Q?iXUsBUPh/+49FtkHdONxvJeanvdsL9SaL63Dr0IDyE964pZIsCz9MnKYO1?=
 =?iso-8859-2?Q?vH61R4bYSaFjwmkOQhrTbKvVdAoIcoRzmfNNClYxE5xWtwUbsvr5ef6dWO?=
 =?iso-8859-2?Q?srLJpTpObQjpW+vN1Wcz+GtFCxbyF064vEPfix8Ml+CdcsF/pjUe75NSW8?=
 =?iso-8859-2?Q?DWcOIKswLj+G6ilRps9ETS5FAN4VdsRuxr/MGGKToKayanbvAgsPo3rQMj?=
 =?iso-8859-2?Q?G2tdsq0lgaCkajL2YJMVApphobzTuMJ7LJ0oHZYeudqbklv0TEM13IIAvb?=
 =?iso-8859-2?Q?D1ls+NGmYva5IS1QaDpz2cDyCNKqNlOIWkrO6cfNfcKliduEm65sxXjTKb?=
 =?iso-8859-2?Q?aRrfNA3md21evC3yu1VX7dSbI7fGd5vKCVn7oiG+7jF7PtTGEugJSaG0C6?=
 =?iso-8859-2?Q?C2Sq4DTrP4YVpnzpzCLsu7v2k5XS7I/T/qYRNOXxeY8LGEmPHDCTZhBUXi?=
 =?iso-8859-2?Q?dMjN5v0RyklFgV445qndqb6CqwKIz2MeEvWOm+a+qNLI/kjE2yJkqDcgJ/?=
 =?iso-8859-2?Q?OIiDY0CPUPlIhTY7eCDvlJddOQXav8RaSEaH+K0HNUlf3KY0sJusZdYyoE?=
 =?iso-8859-2?Q?KFwxDyXXMsvK1sK+XBJD3pSYokaHPIgIUZiQyikrJW4+pEc7Ic9DsZjWj7?=
 =?iso-8859-2?Q?96WIZLkCVxDpk3zr/d7WhJXzpphI1iAPpBuDN7r/ZdGdbSt67FjMjj4FZG?=
 =?iso-8859-2?Q?ZADKDGD/V3RptcoMhUu0AkE0iPOHFF0dA0GEaRzUgq2eq5Zb1q6eJt3z5k?=
 =?iso-8859-2?Q?fLBza/Zthkd97kb2yk3SvalsfxzgNrwy55IsCCn7UDdBWETRsi5If5RVHd?=
 =?iso-8859-2?Q?43vp3a+WB1f1yjQyYgnnYaAiovW3QYY8YVy2h52T9BB0pS2ofA26LiGfHU?=
 =?iso-8859-2?Q?hNAL1V/D6mfb8qY8g+WCq/Mtv1eqbYFY3bID4x1Xiw08OMlBtp/IF+sHwL?=
 =?iso-8859-2?Q?covHO8gYOHjdQLTOql41uA/m5X9E+S1F51J0wLc+y8ebXW7Un6D6TIBTBt?=
 =?iso-8859-2?Q?fYruifyTbSq3GgvWEGtZID/ebwasOdNcqMAP4NhlWPTYIwQQnOqjb4aVAm?=
 =?iso-8859-2?Q?0knV2dnn/tDpDC11sO4Z+GI5MGueE9qEQ/wU0MniSY07f2FD/tVNh3ui06?=
 =?iso-8859-2?Q?wa+3pn3v7ooyP3RbW44tPnQI3nwZ+yZnrs15MefxWbmMAJMKf3zj8GOKSE?=
 =?iso-8859-2?Q?ImS6NySw59W+MQa9AZkfZviJL9Zg5//cWi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e6d7d1c-c34a-4e8c-5ace-08da9d54028a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 11:08:57.1156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NZ/fN8fWXX82QhIraDRq57JB6At5XhGinKm0trLX1h6P6bqSjGuzstv3caTLzawiclli1uhrF7wt/qFT9j1opVu/QJS/dsTIu8cjmTIAoUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5429
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663931341; x=1695467341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kYeHTmlh8cejLzOFrxw+qXrVY6wn5IwVrlVJT93IVMI=;
 b=OLqwLoLsGQGHt9ksfFqeV+192iygvHuwJKSJqScM+8KrQxq2p8mCSRlA
 TiLYqDUhkpuMJ2KrbpnDURiFhj+xRQ76QpfkHcxIuzJxFoBs+uV89r7fN
 Hq9RoBPaqSQuqE989LHRT+6exsYVo9v4YLzUUqGLbj6d27Wg1EuBx7VTK
 52w1EOZBXQcmB8I82tIyDHYJMhXuSossme3KGCJ52OSCtYbYRBttR42PB
 gtkG6nFgeGYm+iUYRHeoZjmyy3Cs/7E6d6qDsinFfQ/PN0vZ4APDiHS1o
 fL92/vZtIxoT8p/D6cfyMKX7U3pwLlAZZihMdOB44U7I6fIMc2pqTGF2i
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OLqwLoLs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer
 topology
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
Cc: "Raj, Victor" <victor.raj@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Is it any different than what you observed in OOT ?
My understanding is that OOT hsd tracker was closed after some discussion.
Please refer to previous discussion if you don't understand how the spread =
should look like, =

and how the testing setup should be configured.

BR,
Micha=B3


-----Original Message-----
From: G, GurucharanX <gurucharanx.g@intel.com> =

Sent: Friday, September 23, 2022 12:47 PM
To: Wilczynski, Michal <michal.wilczynski@intel.com>; intel-wired-lan@lists=
.osuosl.org
Cc: Raj, Victor <victor.raj@intel.com>
Subject: RE: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 layer=
 topology



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf =

> Of Michal Wilczynski
> Sent: Thursday, September 8, 2022 4:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v9 1/5] ice: Support 5 =

> layer topology
> =

> From: Raj Victor <victor.raj@intel.com>
> =

> There is a performance issue reported when the number of VSIs are not =

> multiple of 8. This is caused due to the max children limitation per
> node(8) in 9 layer topology. The BW credits are shared evenly among =

> the children by default. Assume one node has 8 children and the other has=
 1.
> The parent of these nodes share the BW credit equally among them.
> Apparently this causes a problem for the first node which has 8 children.
> The 9th VM get more BW credits than the first 8 VMs.
> =

> Example:
> =

> 1) With 8 VM's:
> for x in 0 1 2 3 4 5 6 7;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> =

> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
> =

> 2) With 9 VM's:
> for x in 0 1 2 3 4 5 6 7 8;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> =

> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
> =

> So on average queue 8 statistics show that 3.7 times more packets were =

> send there than to the other queues.
> =

> The FW starting with version 3.20, has increased the max number of =

> children per node by reducing the number of layers from 9 to 5. =

> Reflect this on driver side.
> =

> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 199 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 243 insertions(+), 2 deletions(-)
> =


We are still observing the performance issue. Its been observed that the pa=
ckets haven't been spreaded in balance across the processes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
