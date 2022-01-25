Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3247E49A1DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jan 2022 01:48:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C51FF81425;
	Tue, 25 Jan 2022 00:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7l7Ca2XBSMq; Tue, 25 Jan 2022 00:48:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C94C88144E;
	Tue, 25 Jan 2022 00:48:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACB5C1BF982
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9950640182
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70YyjYaLjGQd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jan 2022 00:48:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E47740222
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643071707; x=1674607707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sNiHUNsRvMvCMSV4iOTS+usbL5iqDSPnEElIwlEML+E=;
 b=i66jywXtsdeCSVQ8LxHnH2U6B/KeubXikSQ3bh1+Rz76FWkFSA/dqtQW
 LxYbqdvc2N6Ff8Xp0OCPDGMfR20JGZjcP9CdSUKCVYhGxfYHG4z4i6c7z
 ipIBKvOetQpOgw3Uu7HNzIPUpyxFYVImSa9HdS8vxc9hgbfDKDAREWd7w
 RdFn042L0O33gwaVqebDj5VRLfYH1pa0v5Gs7QQXmIOFLRnJHSU6qlsSZ
 /cqwM3F6D2OnoRHPFbJU7Ae/l/IJpfJOpYxLD91dSPnH551dfjMUIZzQy
 wSuvuo9qJD5lt4pbh0UMbMxSHqVqhe835WJOwYdatsHqusNU2tnQYvFBN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="270627407"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="270627407"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="695626981"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 24 Jan 2022 16:48:25 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 24 Jan 2022 16:48:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 24 Jan 2022 16:48:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 24 Jan 2022 16:48:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CA/hgNZDi6u18pIx6F9xQocVDvzjGusAtR4QZKEy6SsLtAhdQAMxATrDw/tTceIyg6EUl+R6xBsF708z1uP3iPl+zPGyS1WKrnl3puUXJl4eGZbmqiH4D4sHS3a4VHHiv6sUs3DoU+Kq6pDgqMh2ya5CenYqdWTlInchG15ig5u0bixvvaIL51QY2kH+5FCazEYI0QcOEFOqbDA+TQlUoZ/9zbU/RKXhlJK0dd9fvk/ZWlhrAFIYcn8PMuF8wQ+nRReQh8bxjECb5eLJ6sIJhanSCymVaGuN8Mx2qor3HIDsy1ebX4nbvj8kmDI2vAbQXcezMobR7LgUg2+k0sOr7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sNiHUNsRvMvCMSV4iOTS+usbL5iqDSPnEElIwlEML+E=;
 b=PwmMwhooi8GTMm7yemTBw0dKNoYIQYg6tqvXEFXAGDe6huZ9J5jc3eSNAA25UCHZTyPlXRs9vvBE90dHmcAM79r9PoB6nVDEINS+Y74oOIgQEz/aLFozXZyL/cDSe5VDRCx5wt26xe7oZ/FDXQZbnAx4sfZGaTOO4zxku1uNBsZ3k5/Awt/fJkMawbzNxNLfoJSNQmy0Nvt6SnFXVj9Xx/mba+hb6WaTfpIAQ5/nahp3DCf8TObqQv0BEnmcQG8WazAQWauFS/z3vZLqpXEQN6qSViU3YGfkLEykP4/7C8xQ68djTEECliFkoNspv+p7G6dVS1H3C+KgqE7amBgSeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB5016.namprd11.prod.outlook.com (2603:10b6:510:32::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Tue, 25 Jan
 2022 00:48:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4909.017; Tue, 25 Jan 2022
 00:48:17 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYETmp9+X6wYnn706LtIZjKCkkyaxy5/SA
Date: Tue, 25 Jan 2022 00:48:17 +0000
Message-ID: <028c789af62a63fbb64d96706ca0e36a57cbec39.camel@intel.com>
References: <20220124154553.29782-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220124154553.29782-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24c21d56-7c24-45b8-e7d4-08d9df9c607d
x-ms-traffictypediagnostic: PH0PR11MB5016:EE_
x-microsoft-antispam-prvs: <PH0PR11MB50160708E8DD0B69B90EE806C65F9@PH0PR11MB5016.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:285;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /7aODny6G7pEYXxElfWffmnkcwmkpE/TQhEGCM7tIqWX+mmY90E+ItcilcGS8Q4mC2CjAqwUJfRn3W5dW0V602SC+U3+aW5eOlMdXzNu9IjsGOIZ71dgSFcTEkI6bQ+pEhSgSlmNfk+rdOZARRGZBkFAKpgtUQsmRREzEpe2JSqpK22cH8nVYoHSuyRR2Be032c7WZsjTMpO6A0nHzkcJZP+l9GDhtG4s/egAStBpvlBt8OKkrwnVWkts3WjTfDbNWGeCuP8+qdEu6i3pJqoEB8ROSjI+9qZA+Iv2L/KWEyRTFatlyNP1FCR5PygZgyfeDEgyK/G5EKN55vgp+YZfr2yVZ+6b/lxI4DSXpk31ZfEpzNyWWhZ+V8XjmXFdeXfi70OAmqrCo06u8ZbvJrshLlB2KWIOfmP+TbHV6FfLn2O+8DlXNA+wva+PXyTQER5cwAIUJP11ppjGdB6WNDfSHefBvb5dSuyWZDtWWzcvBJMPx5EPvXJYPH71jWpo3hXzp2RmO5AcYUzM9zRDki2o1aMQlVEhuGSbeWdw6KQwoYxG3KsswDh8/ugHbBa0Tq+Uyvsj6cG9bC15STETNQDY6dhgS8eXI38JZpSMBYu3Df3ZndKEAGWtfCYW0q9mVwwQvegUql7emwFf5nf+FCW/iuU8G1RBV+xeLNmoUEt542o2PW8tZy1AFY6zKhePd7yz702r88a1lcP83wl2YRMZthVsPLmXujIxHV4RBVUDrkviTBhjEOKPtBx0DG6IntAT74aVCNHpg7iE7B+d17i2s4+Xqqu588YUkTsiPvDxjGegUGLB7Xz9r549aNMYQ1kh9jMmPvCT461RKqvP32Fkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(66476007)(38070700005)(508600001)(36756003)(4326008)(8676002)(38100700002)(122000001)(2616005)(186003)(4744005)(2906002)(110136005)(66556008)(71200400001)(66946007)(966005)(5660300002)(6506007)(26005)(86362001)(107886003)(8936002)(6486002)(76116006)(91956017)(82960400001)(64756008)(316002)(66446008)(6512007)(69900200002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmZ1bEZCTWNqby9EYVd3UERDdlB6Z3ZWbUdmWXptMUxSM2U1dUt4V2lieWtB?=
 =?utf-8?B?RUx2V1lXZWFOMWwrSlk0bHk1NFpiTE9kRGliTDU4SXJPUVVzUkVRWXlGWHJy?=
 =?utf-8?B?SHZrYXBEcVIyRjRxdExSZ2t2b2p1V3owSjQxa2c5Y1h6Q2JwRzFxV01DVWdj?=
 =?utf-8?B?YVdhd2FITExQZmk2MlVhUjBCR1RmWWsyWjlFL28zTFFEZjRZRVBKNVc3NWJm?=
 =?utf-8?B?aTdZWXZzekF6S2I5M0luRjRjRENpcWl6YXR0Yzg4eU5HejBHNlFTUjRUOUJW?=
 =?utf-8?B?Q25WKy9iSUFXL1JBZWhSMHM0Mm9OQUEyNGhYNWRyckp5a3hWZnJGMkIyUEUr?=
 =?utf-8?B?UExiUFJ4c21qL1lTbmNYajQ2RUE0aXdDTkZ6c0pSbUVxTUg4bSt2ZmZsNW5m?=
 =?utf-8?B?RnV3WFB1U24vWXhhTFlMSUprWDRwbmdPTlYxeUcvdCtKN25KU3dNNUV4UEh4?=
 =?utf-8?B?ZEVLWUsxUUtVVk9WSTlxeVdTSi96UkVDVENWcXhYa0Y4U2FnbjBDWGljc1NL?=
 =?utf-8?B?VmUyamRxT1VZVFZBY3BsMHM3elFONHJVaU5lZGd3czdyd3FyK1NSVmFvcnNC?=
 =?utf-8?B?UnF2SFNzcmpWSDBhbURKNUtidm1OUmgzVjI4QUg4ZURwOFlWeEJkT2tDSzNs?=
 =?utf-8?B?Rzh1T3h1MG5qQVNIWWUzRUwxWFpCV2xiSkc3VElPS2lYRXdrNmcrYytLejAx?=
 =?utf-8?B?cTEvZExLcU9QSjNYditKUWgyZW5WOXR6K0N0SEVGQjd3N0ZPWmV3bHhrVHFE?=
 =?utf-8?B?WDdob0RXMWxidzFKbzVYRTFnTEw2V0tRcXlZZUxkQjBaYnlDbDM1R01EY211?=
 =?utf-8?B?OGNFNUkxRUkvNU5Sa3BUNCtkcHRPQTlkN3drRVQ1MU1BeEJ0S0ExTzdjMFZE?=
 =?utf-8?B?OXVyYmNUaDlHcW9LMGNsRlhWRUp4RlRYTXkrY0pRMi85Vmp6cCtXU29JVHJN?=
 =?utf-8?B?eU9HRHE3aW5XVHBFdk5JRUpEb2xUUEFtZTYrMVIyU1N4bGc2SHdmc0Zpd25M?=
 =?utf-8?B?TEtJYzBVMml1bjlFSjJQdEt3VkZPUG1BTnFIN0VQa3J4b0lLenUxNlhkVkNC?=
 =?utf-8?B?Q1VqdC84UzZrLytpSlE5WXYvSDhaSHl4WnVZc21xaTZtd0Yra3p0Zk8rMEVr?=
 =?utf-8?B?aHBSeXB2MUFTVHZMam15bW8vUWx1SitWcG5HNXZ4SVU5SzdSVCtmVHdQVXNJ?=
 =?utf-8?B?bm8yUjR6Q3ZEZ2xsZDNsVk1wKzlNYUNrRWdZb0x4SUVaUCtFMVdoWnlBZmZ3?=
 =?utf-8?B?UDkyUVRaM1ViZHhkdzRGcGw4SGdEeHhPcTNpSTU0cEZCbzB1aG90VThQTGcz?=
 =?utf-8?B?STFvZjY5TWRVNWpSeXJzZ2VNZis4Ti9uTlBHTzZ0M1lMQ1hhdkZDdTUzWnFo?=
 =?utf-8?B?cmtpMGk4VjNuWHhndlhrSXNGNlZpNEVpRGs5MllaWWJyU2JNU2p2aXh5VGhU?=
 =?utf-8?B?ckdHZk56NDc3SlJ5VzRlRFJveDJRdlhraEVZTWpoNERLcVozVlpmNkFoM3Ju?=
 =?utf-8?B?WTJRZEpUL0p5c1p2a0krTDQ3R29rR2Zpc1YvdW83OXZrbXcwSWFhWFlLSmtJ?=
 =?utf-8?B?QTlsTVQ0SnRWcEc5dVJlNFkwWFVzcWFBa3pJUDdhMGpPRjhXTzBjR3o0Mm9N?=
 =?utf-8?B?NGI5RXFpYmM2bEp4cU5zYlBlR2twL3R3QkYyaGZZMWQ3amtZTWx0VEtkOTdt?=
 =?utf-8?B?b0oyUDRHd2ZBQXJ1QUxmNXpOOC9BZEErZzFuNUMrWWZuNytHbXV1c0NtU2hE?=
 =?utf-8?B?RlN6VlFCeFpTM0djRXRxbG1PVkNtWGVENlJyajlPSU5EakRDR0MzWHhXWXZX?=
 =?utf-8?B?dG1vSXd6Y3JvRGV6dXFIbUFOYnA0M0h2YmNYcFBvTFFTcXdDOFJwdktyMzJJ?=
 =?utf-8?B?QzdDMkZuSFZmcWg0WCtJaldhOXluNFhvMlhtd1YvWHdMbzhLYlRvMXlsTTk5?=
 =?utf-8?B?ZnREZkZCY3IwL2kzWkJaQ29jTk9Dd2ZBNWw4UFZONnYwZ1FLQ1NCaFc4VzMr?=
 =?utf-8?B?WWNjcjFvSTdEbkgvT2xaN3VnTkl0bkh4VHE0TzdnS1Y3NEZYOVA0ZXNiZ293?=
 =?utf-8?B?cERoRkV5TDJHV1pqR1A0NC9ld3l3c0FuUGQ3NnRZMnRTUXRvZ01Ycld1cjdt?=
 =?utf-8?B?bUJFVklEL3lCRGdOM0pubGYrOHErUFh3WWwyVnBJMDRHQnpGYVJKTVJWa1ds?=
 =?utf-8?B?RzU2R2VtSHhSNVAxYkhhcmxkSWZuNFcxdEdkbm90VjR0UjFLRHA0NmFxU1lM?=
 =?utf-8?Q?SiqXjXiNmCiH/UZwk9rQoSPlEsNgz+JoTVCG33BEn0=3D?=
Content-ID: <092CB9D9829900459B9068B3BD68E699@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c21d56-7c24-45b8-e7d4-08d9df9c607d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 00:48:17.5610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aXtSopTFQ7Eo7FpmBZdhNorhmdZ6szC6s3h/d9ytdaOL4GgrHYUflcZe7R5A5H4jAgJXSEM2L6aEalATFuSeJlNYh64rbp72XPFmtEtergQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
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
Cc: "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2022-01-24 at 16:45 +0100, Mateusz Palczewski wrote:
> Make iavf_set_mac synchronous by waiting for a response
> from a PF. Without this iavf_set_mac is always returning
> success even though set_mac can be rejected by a PF.
> This ensures that when set_mac exits netdev MAC is updated.
> This is needed for sending ARPs with correct MAC after
> changing VF's MAC. This is also needed by bonding module.

This sounds very much like this patch [1] or is this resolving a
different issue?

> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?
id=c5c922b3e09b6e5eeb9cd2b1122f3e49c0bf2283

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
