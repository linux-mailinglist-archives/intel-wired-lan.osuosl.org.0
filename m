Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPW2GqmoDWox1QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 14:27:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A834758DA08
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 14:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A64A041375;
	Wed, 20 May 2026 12:27:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sNlssuBMNTu5; Wed, 20 May 2026 12:27:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A67E4137A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779280035;
	bh=V7U26VY99PFtzD7Yuknc+os10J1WBITyIx4cyBVxVmQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uSU/RIClJljcZNlhQ3UOjm8TigzuDZxjNZeTdKECt21tjP/UHa6PyZBxbLTGVvMzN
	 ka/6zCVcHjl0V+qHgx5uPVFEsfi2v2SSGRgRyEeDkuLUOz8h96DMWDbSer73mznBQf
	 G7fiTAUJxvn5nvLOstx4cw24ZIg5lg+zMEucSR8JIbq67jtXIIApIKhbHKwQbbTlT/
	 DmxEledZGaMN3/7hcdGzWheIVMKIiiXeAwOSRWiHCGc83oDFjmesf+HVZZx+zkaTIk
	 oL0pBhBW6nY+HWUlFV0sSYO1XremYzU9OYwBhdVd5fJ06Z7T2gAqZiw1hhte2CGTLf
	 YJ0odMt+ZcFIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A67E4137A;
	Wed, 20 May 2026 12:27:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F057F265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 12:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D593A408A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 12:27:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ha2ACyScQ3fa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 12:27:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CDB17408A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDB17408A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDB17408A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 12:27:12 +0000 (UTC)
X-CSE-ConnectionGUID: JAWoQtgHSB2XyqkDZdK2mg==
X-CSE-MsgGUID: 6ez04WKlS1y9+dKszGnXVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80157066"
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="80157066"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 05:27:12 -0700
X-CSE-ConnectionGUID: YPN02VKnR0KaITTorvgp0Q==
X-CSE-MsgGUID: EHChpZT1QNmwL/qAo61G1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="278258808"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 05:27:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 05:27:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 05:27:11 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 05:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AwjNS9mMVosn+w/ncLmXuG5HzmiAaDPJGTAIjSOcdphHg2ZSe3a3iVgVvigLJ6CGaBIt4C4M3q342x/1GEMj+NJgU16yE11LBN8kSNHfCgzrshPdQbAqJOf71TZGhafkFTIe7yxQplSrgt1G/8QcGyOqDlqZu8CknKi9iB0gCYhHWFEik73oqbMzDYzo1zDuKBw70dX6iou6lfkkKJ9qRH2rSNlCiUqfRM6yaVNIOxMgXA95yAbdiICkDgFz66ZWCq3XlsImlCAIG6vFc/zGEEZZnRVZsdvXo7bwrkqpuxteGGfNfy4KIShMekOfwBqQwCt5wjGLnMbsp32sV7kK/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V7U26VY99PFtzD7Yuknc+os10J1WBITyIx4cyBVxVmQ=;
 b=izr3aszOQ7ZHXo851J7bbeur+HDJIGXl/s3A6BjJ88SFi/TB8rmjMXxgGf0kytpZXCjOS21782+lJnShcQIwHtTdQGp3pXhj+VYJQxT1TZ7WcuhEpPPCHFmzFwlLRpCFtSids9AJ+WeFtzMpykQ7GSY4Lb5XLxLVXuStHnjqhP62vSOQTceZkceJShJXLC29JufqBH8Kz8EbdmGI4TQrXjQ1QR1G1NkuJegKXXNCMm4L1JJ6uL9Xr7y/FTtzF21uC9x+RRyJF7S+d7PFzPJ7C8D8YhAQK4r3CffN7YpQMQJopY7WTCUEwRIeRjQHEg17h6vFXfKr7crtEZZCGkvJnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6015.namprd11.prod.outlook.com (2603:10b6:8:74::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 12:27:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 12:27:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CPI
 support for E825C
Thread-Index: AQHc6Dz0P7R6Nh5vm0K7IGNCMPx7ZLYW1xnA
Date: Wed, 20 May 2026 12:27:06 +0000
Message-ID: <IA3PR11MB89866BC0598C6D63E6D071CCE5012@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260520093628.3930705-1-grzegorz.nitka@intel.com>
 <20260520093628.3930705-7-grzegorz.nitka@intel.com>
In-Reply-To: <20260520093628.3930705-7-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6015:EE_
x-ms-office365-filtering-correlation-id: d0b3dc35-6f19-46d3-983f-08deb66b1b22
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|11063799006|3023799007|4143699003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: VnmDe/ZBXBK1E8pPvZgterkfcOLSJcLJsNboRqp0Jdh/7aIjSZBb2ms+sa8AxqYoKnFj6JadRVEpQIogLGboDRfjAGw5gyHRTrvcHZQBXb/M/vrb9NORDCDdaXmudYqHpL5Vs7yax9UviwmMqx+emMlP7Wyqn9T1asP/ek5fRgnsbPSS3/2qoMDlmD0HyYYREpsykX1XkGiAVJvDwVuBzHk5lpU5/7gdVgf0I+Y1JDrGl3wB6kFGoGJT3hwAK2w5t/+qMQRcmzTU0bzGm+7n/GGj+un1uk3cs/Ru1wa/xP2Set56/V38HugW70tEPCQD5gwrP4SXFEM/pL4tA5d88UvicXlePMrdGD83lLGC6EzjK34FDo0XuV7KwbW1YTX1dCd6pkp/uBQEBtlS7hp8Vk1JKfh8e/x3mNnI0geKJYCuh9cmCiXiJw+iq/+UYfSEV6wNCZmWs3SVmYoRoynbSnS9rRlTqXlP8G/jO3EhTiHlpex24jU+8xUPk6oKbFDh/9O9MUWDXgOjDQtzlJ9yyynAOaEH+fiabW8ug4QVYAG2IPkFI53YIaQamcZM00BVDYe6HEdDiwUh30CIRG2G9WSlaGgUExK75qCTWiRxfLZizqa5Lh9y1l6KNUZv31tY7c93A4ekfem0qRYSni24dBQ+WaF9KObpsqirnRyUGm+kOh25uowaqAo3lnjdqavz/a6IyXN++wk47tC4iucBDQEuY2DhXGjU6cMp+0bfhmge2mSTIYibRi7HYQx5H7Pj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(11063799006)(3023799007)(4143699003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fe2EZAXNCBWuIJAJO3I0OmfVOX5aZwrdNbs9u8DW9W15J7I+Q4vUBWflujwJ?=
 =?us-ascii?Q?CABoWmgmOCbtBuq2wBTTNg6sRQ38jW3TGqRTiodGVgM63bkg2iZeaLX772d/?=
 =?us-ascii?Q?b1blJqCAJkYBx9u7N0MkKgQgh9lLDYPsaZ2qaNl90xxZmGRkhOZtN+YVHLN+?=
 =?us-ascii?Q?ZKAmqEjeqC/Z9sC6oqDQH/Mfxaz1Jl4elSjG+KdAlpx0vkHXJt597h9iqxsH?=
 =?us-ascii?Q?d4o2kmkE3eSmKmmdhQHlVJp34E5DK17FUyprzH9A3CVW9mIBRMIRmYTj3bbY?=
 =?us-ascii?Q?OV5N/vYDUT43DyoMi3Z8E6Ayl3/V7y3pFbWt3/jnY/9Piu2rncPusfpEcUcV?=
 =?us-ascii?Q?ayueoVcXdRX6zgIUhAh9aTZkGArh5oJs10fDka0pnV8lLwpzImmLvOXamh8x?=
 =?us-ascii?Q?y0P+i2stafCB7WYhfryqGpbOqMTv+AORdC45XV8D0EiDIdqB7OA3ZBT529NO?=
 =?us-ascii?Q?BhlnJhNS8L6rCDgeyKg2Lsr5yD3nKVLFHlDupD9gHa3sKbU/D8vjmjfsoXbi?=
 =?us-ascii?Q?AdRnayUyfm3MWBgnRiakQSSNv2Srh55BGK/HHZCMddmXknjZJDW2zPIP17zx?=
 =?us-ascii?Q?zp7wIeB6R8M86aGCjxR8HUvdgzlVlIDsg72rh7coCVbiJjlxmrgQjoiHDnFR?=
 =?us-ascii?Q?Ssm3E9B1lpSt+jDXveOsMZRRg3ZNvJFwzMDo0acpd/n5OpZDfhiyCksyAJxa?=
 =?us-ascii?Q?SUsHitMVsY0xDhuzW8oan7SCHWo2fMlXc9qJfhh3aLXNMo+Ms1JcLTIK8XBx?=
 =?us-ascii?Q?tRCUblpfKwqwWIuVzzk2ACXeAIcsWhUPfYigImj/4dHVZL+FfiXwRJHR104R?=
 =?us-ascii?Q?NgnkSLik/a7CO54q8asAawSwlPfAvs0hvQbA7p6OfqRZicYxTPcF7hNGxMnZ?=
 =?us-ascii?Q?w6/dphTT4mfL+bcg9Vyg4sN9VDcRBO1fKnDwAwYPXRM7zQOSZICPvCt7F3T1?=
 =?us-ascii?Q?I6j5yRIdXq7vQJkZHnrViEeqG+EzYpgQ7WEmrMZHc7IwVfl0jn01u03brsX1?=
 =?us-ascii?Q?mc831Qqn2uMMUHGxnFQTa1u69kVoTqn0vmq5N7xP+olW95+Z0w+psfwC9jbO?=
 =?us-ascii?Q?cuzwRwUo82QQ6wNcrPPdH4T0X8T7aGSZAf8PWXetnSo36ZFK9imzVkZeTIgX?=
 =?us-ascii?Q?pDN4SwMqGL8EUZWiuTF5aIGMkBKu/LKn97Z5hy6rbrAMVOyFm++K4XkxYH4h?=
 =?us-ascii?Q?kOUqYUdvzOL0CUB6ZuqPVSpUCKl2ChZhk7QJdUqmhFZ08zk/iEKjvaYX69ij?=
 =?us-ascii?Q?dxuIN3NUCPPNN8FyRJonZskX+ihfYLOnhfO6xOeSdSIin0DbnOlUxx3oWty1?=
 =?us-ascii?Q?hgRjTafRZ+SbPgOSSoeBti5PuPv4kz4aFbyXNBsSOQUSQTY+2VqP8WyYShfq?=
 =?us-ascii?Q?nMj42JkBocm6k9e0nSxoRwCMFB0rvM6zTGgMxG1sc3qLzrhFTN9O1gCwP8Oj?=
 =?us-ascii?Q?9cOV8Q2AcjZnN+ds4cnEKxDeqmbg3L90lzJhQT/ACBX8qCDqSsIsIE7PNPw/?=
 =?us-ascii?Q?D3vGGDrh4iI8x2IW40P9uHGL2jNgX0kRc2F5UPDcTfpIdtspkGBaEtVZM9py?=
 =?us-ascii?Q?Rpvh+im2So++pca3Whg+dPCdt6tAeJJZwyfNvg5zZFLxxoqUQlmI7iFmiHpN?=
 =?us-ascii?Q?cMw6dRCBk7alN7zS8nSjs9atd8RZ3MbEw9FY2KGaDF/WNShZuRXERkmqC6uu?=
 =?us-ascii?Q?bgJ0WaAqx1qmLBsBpqJQNBTMvQzkk8nUpWkHl1PcQM4BOjGjhcnurb8Zm2KC?=
 =?us-ascii?Q?JAHhC2P0kQzZspW1Eu6spXFHZoiJMTQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sSL0oi7hd/NDtoxmZEoZ8oQRS8TDH2JNrI5XqwrU158jxJdlrCy1xQa9TUEp62Oz3G1+e6M4xhRS+P2TDftsf0kQnXXl/qpRfPBcCAkL64aYiwNAmkpVRT0HbBR5sguERok+x+W0Mzp8ZjaW2IrdClzwEE8Frt3pabUAx03SrBtvCTfJX9EhF+lhy5heMOamrBEb8WpL46W77yzVxY/V2Ghw6sSxlzDLOlCCPbAzqtRvMGLUzfIqqOXLPpsJYp8d9zUBjEHFgGf0Sg+oHWNs8LT7KIlDAmWEnC27WbejX7j6+GDfqQWBszP8CdO0Q7fWxLAi/C9L6B7802wxgXqrPQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b3dc35-6f19-46d3-983f-08deb66b1b22
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 12:27:06.5797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w3gVhU0nGYwVKe23slgg+lTGfx5rrWSmBypb2SA2qxNglif/n+Z3Yl1jvVroJShrVwNq3kuusvPYPSzSLc+0FiNGS7cEyC9/ZO5hWfxADys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6015
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779280033; x=1810816033;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RYY6+AXTL4JRy8vIOdQJtq3NdWtbcTSzyFnmEmtdg2w=;
 b=Rtlbay+oDksV/V56+IXODddkuP06KmnL3bEZJjiQXtbCu0p3IGSnn8jD
 oRChbHTAa9D++HPMA9ZaDjETf2AV7PuQySUMkHO+3uXzJEE1jE4GNYxTh
 X0FMRLLFGjCGmM6sBOKGK4/UgHkxLFOT7xVAFQFLRABULqQCopfApX1SI
 RGdsbLVQHhiMIABmTNkTO+bweI6VUdvdItrHn5dYP0vFwk6gyKq1fNebO
 jp704wG1ZNuKgGqmswcO8MB/wz+oK7ybwoGg3A2a/m4Pp2OYlntCiCjKz
 FL1ibqgoH/CfG9LxXhOsNNnAvIDfUFE9n1x4jZN+K59dPdg0ZOw2q1LTQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rtlbay+o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CPI
 support for E825C
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: A834758DA08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Wednesday, May 20, 2026 11:36 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CPI
> support for E825C
>=20
> Add full CPI (Converged PHY Interface) command handling required for
> E825C devices. The CPI interface allows the driver to interact with
> PHY-side control logic through the LM/PHY command registers, including
> enabling/disabling/selection of PHY reference clock.
>=20
> This patch introduces:
>  - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
>    request/acknowledge state machine, including REQ/ACK protocol,
>    command execution, and response handling
>  - helper functions for reading/writing PHY registers over Sideband
>    Queue
>  - CPI command execution API (ice_cpi_exec) and a helper for enabling
> or
>    disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY
> clocking')
>  - assurance of CPI transaction serialization into the CPI core.
>    CPI REQ/ACK is a multi-step handshake    and must be executed
>    atomically per PHY. Centralize the lock in ice_cpi_exec() and
>    use adapter-scoped per-PHY mutexes, which match the hardware
> sharing
>    model across PFs.
>  - addition of the non-posted write opcode (wr_np) to SBQ
>  - Makefile integration to build CPI support together with the PTP
> stack
>=20
> This provides the infrastructure necessary to support PHY-side
> configuration flows on E825C and is required for advanced link control
> and Tx reference clock management.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   4 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |   7 +
>  drivers/net/ethernet/intel/ice/ice_cpi.c     | 362
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_cpi.h     |  58 +++
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
>  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +
>  7 files changed, 437 insertions(+), 3 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 5b2c666496e7..38db476ab2ec 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o

...

> +
> +/**
> + * ice_cpi_set_cmd - execute CPI SET command
> + * @hw: pointer to the HW struct
> + * @opcode: CPI command opcode
> + * @phy: phy index CPI command is applied for
> + * @port_lane: ephy index CPI command is applied for
> + * @data: CPI opcode context specific data
> + *
> + * Return: 0 on success, negative error code on failure.
> + */
> +static int ice_cpi_set_cmd(struct ice_hw *hw, u16 opcode, u8 phy, u8
> port_lane,
> +			   u16 data)
> +{
> +	struct ice_cpi_resp cpi_resp =3D {0};
> +	struct ice_cpi_cmd cpi_cmd =3D {
> +		.opcode =3D opcode,
Silent u16 to u8 truncation.

> +		.set =3D true,
> +		.port =3D port_lane,
> +		.data =3D data,
> +	};
> +
> +	return ice_cpi_exec(hw, phy, &cpi_cmd, &cpi_resp); }
> +

...

>  /* Port hardware description */
>  struct ice_hw {
>  	u8 __iomem *hw_addr;
> --
> 2.39.3

