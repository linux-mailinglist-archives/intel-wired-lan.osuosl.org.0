Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD03C6B4BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 19:53:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA32D82336;
	Tue, 18 Nov 2025 18:53:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0iagfwBsiFKb; Tue, 18 Nov 2025 18:53:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1990482327
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763492017;
	bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LkvHaNlqiCk39FBeyKpmFqtCOtxmKvSRDsjNjoIMgIUeCwmrZXYUE1V1Qta9qUWtV
	 xrm5qVlqSfaH1orfQF2kP283bbK4AkmWQUF1N4J+BMAfsjJAIQdG/XybcZhDAImINo
	 Musz4daqniaPsmg16RJp5fkDN6NU4eNr6TtlT6IGrGbFXwuYVe07zM3m6vDXZvbBNE
	 GbFhNQFmmaZf5vKngsEGF0dK525eQcnf/5COhFRUylLBXlCIN9NK+Mb5QCp0QelD8B
	 yCG5IHo7PDv30YqQYesP628j9FqEHHhOOij6HDvk9tb0CjdGzDms0k0kdRo7AWsf8+
	 +g0PBSOrywE1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1990482327;
	Tue, 18 Nov 2025 18:53:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 156191BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF00240AA7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:53:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYgeqqgrFTVc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 18:53:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.37.142.90;
 helo=alln-iport-3.cisco.com; envelope-from=kartilak@cisco.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B002B40AA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B002B40AA3
Received: from alln-iport-3.cisco.com (alln-iport-3.cisco.com [173.37.142.90])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B002B40AA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:53:32 +0000 (UTC)
X-CSE-ConnectionGUID: cmQvIDhPSo+nDoaCqRo0Lg==
X-CSE-MsgGUID: zfu17JyJTLC38OuV7NWY6Q==
X-IPAS-Result: =?us-ascii?q?A0AuAAClvxxp/5AQJK1aHAEBAQEBAQcBARIBAQQEAQFAJ?=
 =?us-ascii?q?YEXBwEBCwGBbVIHghtJiCADhE1fhliCJJ4agX8PAQEBDQJRBAEBhQcCjFoCJ?=
 =?us-ascii?q?jQJDgECBAEBAQEDAgMBAQEBAQEBAQEBAQsBAQUBAQECAQcFgQ4ThlyGWgEBA?=
 =?us-ascii?q?QEDEig/EAIBCA4KHhAxJQIEDgUIGoVUAwECo2cBgUACiit4gTSBAeAmgUoBi?=
 =?us-ascii?q?FIBhW6EeCcbgg2BV4JoPoRFhBOCLwSBDoEUgQ6GJ4wmTIY8UngcA1ksAVUTF?=
 =?us-ascii?q?wsHBYEgQwOBCyNLBS0dgSQiHxgRYFRAg0kQDAZoDwaBEhlJAgICBQJAOoFoB?=
 =?us-ascii?q?hwGHBICAwECAjpVDYF3AgIEghx+ggoPiGGBCQVHAwttPTcUGwUEgTUFlAxRg?=
 =?us-ascii?q?UNpmkqbCJUXCoQcog0XhASNE5lUmQapFgIEAgQFAhABAQaBaDyBWXAVgyJSG?=
 =?us-ascii?q?Q/VEHgCOgIHCwEBAwmGSI0fAQE?=
IronPort-PHdr: A9a23:tjoWUxfc6wfnSvPSLolBvLVYlGM/gIqcDmcuAtIPgrZKdOGk55v9e
 RaZ7vR2h1iPVoLeuLpIiOvT5rjpQndIoY2Av3YLbIFWWlcbhN8XkQ0tDI/NCUDyIPPwKS1vN
 M9DT1RiuXq8NCBo
IronPort-Data: A9a23:HB+UqaqZXfVOmxDm+swwwP2bd71eBmJIZBIvgKrLsJaIsI4StFCzt
 garIBmOPveDYzemfo1/PN/kpx4D7MSAm9QyQAs4qCEwQi9Eo+PIVI+TRqvS04x+DSFioGZPt
 Zh2hgzodZhsJpPkjk7zdOCn9j8kif3gqoPUUIbsIjp2SRJvVBAvgBdin/9RqoNziLBVOSvV0
 T/Ji5OZYQ7NNwJcaDpOtvva8UM35ZwehRtB1rAATaET1LPhvyF94KI3fcmZM3b+S49IKe+2L
 86r5K255G7Q4yA2AdqjlLvhGmVSKlIFFVHT4pb+c/HKbilq/kTe4I5iXBYvQRs/ZwGyojxE4
 I4lWapc5useFvakdOw1C3G0GszlVEFM0OevzXOX6aR/w6BaGpfh660GMa04AWEX0u1yOH9v2
 fwgEzdOaDyEjsmv+rXjbuY506zPLOGzVG8eknhkyTecCbMtRorOBv2Vo9RZxzw3wMtJGJ4yZ
 eJANmEpN0qGOkMJYwtLYH49tL/Aan3XcDRCtFORrKkf6GnIxws327/oWDbQUoLRGJkEzh7H/
 goq+UzrDAxDa/6O6wah2Sn8ofLxwgXEadwrQejQGvlCxQf7KnYoIBwQSVa/5Oa4kEOyHtZWL
 WQQ+zEytu4171GsVd27WAe3yENopTYVX95WVul/4waXx++MvECSB3MPSXhKb9lOWNIKeAHGH
 2ShxrvBLTduq7aSD3ma89+pQfmaY0D58Udqifc4cDY4
IronPort-HdrOrdr: A9a23:fzlDBKwjt5UJsnShU6x6KrPxY+gkLtp133Aq2lEZdPULSL36qy
 n+ppQmPEHP6Qr5AEtQ5+xoWJPtfZvdnaQFh7X5To3SLTUO31HYY72KjLGSjwEIdBeOjNK1uZ
 0QF5SWTeeAcmSS7vyKrjVQcexQveVvmZrA7YyxvhUdKD2CKZsQkzuRYTzra3GeMTM2fqbRY6
 DsnvavyQDQHkg/X4CQPFVAde7FoNHAiZLhZjA7JzNP0mOzpALtwoTXVzyD0Dkjcx4n+9ofGG
 7+/DDR1+GGibWW2xXc32jc49B9g9360OZOA8SKl4w8NijsohzAXvUgZ5Sy+BQO5M2/4lcjl9
 fB5z06Od5o1n/Xdmap5TPwxgjb1io04XOK8y7avZKjm726eNsJMbsEuWtrSGqf16PmhqA77E
 t/5RPdi3OQN2KYoM2y3amRa/ggrDvFnZNrq59hs5UYa/peVFeUxrZvpn+81/w7bXnHwZFiH+
 90AM7G4vFKNVuccnDCp2FqhMehR3IpA369MwM/U+GuonFrdUpCvgMl7d1amm1F+IM2SpFC6e
 iBOqN0lKtWRstTaa5mHu8OTca+F2SIGHv3QS+vCEWiELtCN2PGqpbx7rlw7Oa2eIYQxJ93nJ
 jaSltXuWM7ZkqrA8yT259A9AzLXQyGLH7Q49Ab44I8tqz3RbLtPyHGQFcyk9G4q/FaGcHfU+
 bbAuMhPxYiFxqYJW9k5XyLZ3AJEwhtbCQ8gKdPZ26z
X-Talos-CUID: 9a23:vPYAzG8Y1wZbO8Fe9NeVv0URI94EXn3l93CTJWO/AE1wcrrNbVDFrQ==
X-Talos-MUID: =?us-ascii?q?9a23=3AtTGkhw4x1UTcaT6R3n7kR+cixox67bn3V2Ics6k?=
 =?us-ascii?q?ikJLUEjFOZBGivWqOF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-l-core-07.cisco.com ([173.36.16.144])
 by alln-iport-3.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 18 Nov 2025 18:53:31 +0000
Received: from alln-opgw-2.cisco.com (alln-opgw-2.cisco.com [173.37.147.250])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by alln-l-core-07.cisco.com (Postfix) with ESMTPS id 9EC1C180001EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 18:53:31 +0000 (GMT)
X-CSE-ConnectionGUID: M9leBRaDSNerl8581u8RUQ==
X-CSE-MsgGUID: VHYB3SmNQcuTRetKu2wrtA==
X-IronPort-AV: E=Sophos;i="6.19,314,1754956800"; d="scan'208";a="32832790"
Received: from mail-bl0pr07cu00105.outbound.protection.outlook.com (HELO
 BL0PR07CU001.outbound.protection.outlook.com) ([40.93.4.5])
 by alln-opgw-2.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384;
 18 Nov 2025 18:53:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N40gpzt9wav64InpGlstHYx4ivYccTosBkbwgti54vj+iexpoJpuGz3KqG/iO9zdzJ+6kspKCYQPduBL8vuNXCORzM4H2Ti/IgA31BaJ9NiiZMJFdeLsH98ZaUn/q7VsgQMMkaxqbWMp9Nmxh9rmFcXf7Lr5BgKf8r0Uvh+7ZPmYflXjXurRQ2792H04mbJFinCfxvvPETPsCwwM7HdVmVW4ZPp4hKYG1D+G7NMoteRveacSABqY46tITcBp3melPTqW+0klxQsyBdejq1ihC1O6UlcMaY4b4oTP7E86usqU37UTbpC2e1EDpZCriRnVG83nTl34ACwraklChwqaKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=;
 b=nexeg8FPBe5uAeHVOB656ZkueAwdhfLbP79zqx/eEyLCppj5MQPbXN2dr2UbzOjDwMTOVeL8PlZlhORBzgOIF8gMuvE/M9SSH2hnEgaTGWuhmeVbJrrdMZI4GOV1TQQ7dwNgdAIdYDgJe52OLlkOoCTawD4zc6AFVF/KK95bFS/w4EySAi+osDhAsX/8aq1++UeQQWGPR+1nX+ZXFFgBGw1imKimLevn853AF1DgFRdR50uABFU7r0GDHN3/EWhed+KXcW+rujXA1YicGKcdLfVybQ3UkOnG683WtqbpN4obEVnUrRlkfm2EbltfXDoGMWFUR26k5Vm3nDHembVN/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19)
 by SJ0PR11MB7701.namprd11.prod.outlook.com (2603:10b6:a03:4e4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Tue, 18 Nov
 2025 18:53:26 +0000
Received: from SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd]) by SJ0PR11MB5896.namprd11.prod.outlook.com
 ([fe80::2081:bcd4:cb3e:e2dd%4]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 18:53:26 +0000
From: "Karan Tilak Kumar (kartilak)" <kartilak@cisco.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
CC: Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org"
 <linaro-mm-sig@lists.linaro.org>, "amd-gfx@lists.freedesktop.org"
 <amd-gfx@lists.freedesktop.org>, "linux-arm-msm@vger.kernel.org"
 <linux-arm-msm@vger.kernel.org>, "freedreno@lists.freedesktop.org"
 <freedreno@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "linux-staging@lists.linux.dev"
 <linux-staging@lists.linux.dev>, "ceph-devel@vger.kernel.org"
 <ceph-devel@vger.kernel.org>, "linux-trace-kernel@vger.kernel.org"
 <linux-trace-kernel@vger.kernel.org>, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>,
 "Satish Kharat (satishkh)" <satishkh@cisco.com>, "Sesidhar Baddela
 (sebaddel)" <sebaddel@cisco.com>, "James E.J. Bottomley"
 <James.Bottomley@hansenpartnership.com>, Andrew Morton
 <akpm@linux-foundation.org>
Thread-Topic: [PATCH v3 19/21] scsi: fnic: Switch to use %ptSp
Thread-Index: AQHcVK6ozanKNwbcFU2LSi/oClNkW7TxMIPggACrXQCABvPI0A==
Date: Tue, 18 Nov 2025 18:53:25 +0000
Message-ID: <SJ0PR11MB58966843A2F7413517F25822C3D6A@SJ0PR11MB5896.namprd11.prod.outlook.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
 <SJ0PR11MB5896D2F9DAC35FF8ADB29087C3CDA@SJ0PR11MB5896.namprd11.prod.outlook.com>
 <aRbreoKzashQcEne@smile.fi.intel.com>
In-Reply-To: <aRbreoKzashQcEne@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5896:EE_|SJ0PR11MB7701:EE_
x-ms-office365-filtering-correlation-id: a5ad9d9c-fec6-41c1-2267-08de26d3c18f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GUMa+XOyswf2U2DZtEJX5ixyVbnqEMu6+P/cmDXtAOmacozf9sTeRAPDoRo9?=
 =?us-ascii?Q?qR2z8k5QXeT9mLfPAY+A7GPyEoVeX+C/hxWS5l60LIcfeKC7KCCFM3NsyfDu?=
 =?us-ascii?Q?XRvf+ZUAdMp7LpE3/t/oqHvY0sSKto68drpWLCKm3UfWXjQJxaVeY5YFZD10?=
 =?us-ascii?Q?Ykeozb0BKyaUWqBo+5ksmQMisXGfg4Y0eflj/ooM5RboHswkIVYLwnZY9nzm?=
 =?us-ascii?Q?yI0AmWRzPPGjM1mN3VLxZP50NYARrg1x1B0A4XPj7wOb82OIiKC8xPAQEyIa?=
 =?us-ascii?Q?c/cMVe4R6/889JUofDr0fyOHxTWaBZy7L1HDcsIXPhUpi2m/VtEs+y7zVO3X?=
 =?us-ascii?Q?JN4o3/Jc/pMfyXvJdmVtr+VjdhJrfU+dtXNo7OKXNd0BTatCgyP+6W4Wh0ig?=
 =?us-ascii?Q?wE48OBu/s+ENCm0eryKnHyDrKjVG0hhzzSIJ7yMznnSWsQ8torqxOQdmtAiS?=
 =?us-ascii?Q?fQxvttI8k/8Vtlh+sDaVfD59s2NtqVm1aBvTPrvK99ej6qavEOdKi103mbOl?=
 =?us-ascii?Q?A9btywOofvoBFJGRZKsNPI82gpFJFIFZol9Tk86ZVIIDt8tBazyY6sxN1LCr?=
 =?us-ascii?Q?TZ+OiJedxLf9m3q1P9LUkgISHunZNE1vRLxo7kV186DvpkZqfSDp5/F5dtqR?=
 =?us-ascii?Q?VLb8a0n79/C/CHR6cE5cZvwFIuQbfCuvy8ZghQWoVB4qjHh2ShC7tWY/Yhp0?=
 =?us-ascii?Q?YoembG3qsq92We+EyMzJpbPLH02jv7s3Xgq89R8z1YWsoaEj0u9/QBqS98CG?=
 =?us-ascii?Q?E+ujhRMWMHrYsb56TbAvnQnShBvwyqxOc5ejXyez0+yjE13lCqHqoJ3AjUh6?=
 =?us-ascii?Q?rPb1yxWqoMrKhLwgsMbEy6sEOhPM9qYivqFoAyD1awquylfskD+XiYLIJeDY?=
 =?us-ascii?Q?HRXqJxEFN5p96UvZxUduu0XWeyXRyW+TU/7uvtaGRwu2klGjVeaW9bUevAOA?=
 =?us-ascii?Q?Yq+rJvNg0wxJafGNurhlHFv5inOJlSyc7pR9xB5mqB4bAQ/nXfRqQ3Cr8wyG?=
 =?us-ascii?Q?drPti2nq/5O7BOlcQ/ckPyVu2pd4LB9kJIHDzfwF/If2xOOJFX5tdUf9P4y5?=
 =?us-ascii?Q?A+PgQqwCFcHkg+lDCYDUiEDWWrFWmSHfLPR7/wISbMhOapBcxsWrDaDH8bAX?=
 =?us-ascii?Q?YCDa7DvxdkppsKJMNfFxu0+TXi+CL+zFNhawd8FLlnoBiuruj/H6vUoGpYu4?=
 =?us-ascii?Q?p8mT5Oc51Wmq7vxhrgmtoP9DUW9cym7+HBrw+at7j085OVrcgc/6wd/LVwv+?=
 =?us-ascii?Q?YaYSx8u/FZFXoxUEMjy9CbjkdDmo4qgTxANijYef5ngmO7BFGFnZ+4jiiJpD?=
 =?us-ascii?Q?u1xPwquutK5Ir7jU1DEu35zR6Gask+iBEVpVzffqMpw1+MD2XueXMc0eU4BW?=
 =?us-ascii?Q?r6CALNEr0gwe83nf2B2xYZYit1lxnDV434Qfh/nOHtaX9QbpQGDI/C/mr5xs?=
 =?us-ascii?Q?cS5/dgufeEKq2mR+lQXEGXOrjmjHzg4wAOr7EMWRbTtdPg8w26/rkrgKf0S/?=
 =?us-ascii?Q?Kk26pg5OvuuJQYdxheC0ZPQTOIupS0HpgvbC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5896.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4g49PWLq4LnszL+DPUrVw0Z7BDQjRmBANGMTzIKXkbkHa7COXiVWygzlSygC?=
 =?us-ascii?Q?+nb6PB2Xd4khvp858iobsixHJecUd/4YHN/PZUQy+/1WSXD27l+43WfYMgCC?=
 =?us-ascii?Q?LR7eaPRDh7FRFGZ5D0/btclpOpIYReYqEBUnktcVzjozDgYqWm4UnejrFfXc?=
 =?us-ascii?Q?Rb6Sc4Ih87OjMK9ZuVGuCGvBtUttKkbZQSEpHLH8FA/+3c5QGFf4u02PT2ez?=
 =?us-ascii?Q?a78QzpaImmCxx4QoCcqaq9t4ocVv+T5fWLZ5iBeb1H5o4ZlWAsn/rec9R5Wq?=
 =?us-ascii?Q?JTALIiE/h1gJ3hvajhsqKzCvZhASmfDRuUE8Ll96efoMG/9Mv49/rCDqx38l?=
 =?us-ascii?Q?AsiZzX2Ng3wSUPs3pARBgf7enrJbwaF6tvf7w3nRGbgYe7CzDZ3Ho+yrkQ47?=
 =?us-ascii?Q?AASTZE4+Jk61cy9X8wrrElvkA4BQ+pQqfvc26pL32X3DzATMdD+n71h4tRyG?=
 =?us-ascii?Q?5M/Ilfs93s9BJi9aa+WvCEnPjdYWPzWhs4WfLaIG9W2eaDeYvwIR6317wS8i?=
 =?us-ascii?Q?nloa7xlzahUJ3qKEuOLIR/OvCr6DnHyvZNvuNAp9YWwz6WHLwfDHGoGoc6Mc?=
 =?us-ascii?Q?YLp9BXp1twFg/eogDMzsWgTerYBtPbM7Y/WfWaQHY42OOxPQYZkgRT4Ewc7r?=
 =?us-ascii?Q?QCj/EFu90lrEi7t2XWUu1O0p7z9x/vG6cE0MLfMhTXG2YsjPuDpkI3KeFLpr?=
 =?us-ascii?Q?9ro/SW+ywENYsS0fadcxk+SY7d1ctb7QfmuNWqZN9gyNvFsVBeSBc2FGO0a8?=
 =?us-ascii?Q?j8p4aeKWdR0iT1J3dOk+rPgEUCdfIeZJ1vsfZCnjUEf10c6Z6SWPC2GaPIHc?=
 =?us-ascii?Q?sPZP8UT18E8zUee4/il3Ry9+NHTw6gmBPmEftL1kns4ZvuoSmTdTpOKIpj5q?=
 =?us-ascii?Q?FOamVJ7c4XwL0umzSZFTFADpStj/Mnjt3D6CjxSyqj48Y38stZcnOaXtXo4Z?=
 =?us-ascii?Q?2iKJ7vTMhyezmZV6Ogsio5S2Png+Hr25OGunbheGFvwg4+3d8C7hLD0Uxfa8?=
 =?us-ascii?Q?VvGic6BhVdlzMp7vhjkH4bw/Vl5Y9kkneS27wo59pOXam7oASDueEHJcaYD3?=
 =?us-ascii?Q?6FvfdhFTOOvYnAadbvQBHx3BFNTBpMbtImw/wOzdlSXdpG0dIKFTeUaeMc4S?=
 =?us-ascii?Q?hRsQ7eC1mX4ytKtQllHlWiHwHnUkDGcwtwqCoC2+OADdM6838YpHV9rkn88d?=
 =?us-ascii?Q?5XV+7ncpQjUc7SrP7po1ytI2jQ9QBCK2ZW/e76Cb2OW1yrwJjh4cc2RB13Dx?=
 =?us-ascii?Q?eLHSMowtXBHzcRQQBXK9FQRcut0VwkJ2w/BSoIG4MnkXJvXfJ8wr5cfCggB4?=
 =?us-ascii?Q?Su3cBFP/Fyvg6GVQXmIc/8i9a0EdvhtjarM7zNQ+aue6pIhdDtkSQKvI6ZCp?=
 =?us-ascii?Q?sujh9K82JUkylQ/12yzeNXqk5nWy2Q5kavriDPhOPfTQ9RZClXpyJOiRglsH?=
 =?us-ascii?Q?OTHbQ2HoJ+ojQjfb2zGtJSldHACjTWb3Nu3oaNkObAw0XsPVVKb8WQil8yY3?=
 =?us-ascii?Q?UIL8SrClUK7KzbmOWYZqJe76kOo7z554Hk7NFBl75kDq7q2UPM0ngQ5JYgTF?=
 =?us-ascii?Q?af7AZBJ7ceEnDM2oWAdVNhBi2cFlDJaNrrFzcJyE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ad9d9c-fec6-41c1-2267-08de26d3c18f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 18:53:26.0249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4oM0CPuVrjk8BArkEZqVmX25kgwilVgpoUtzL7jXnPF5Wqo8A12k/Bv+wSykoN9Ag42nrO1qlkYSH02XL2axqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7701
X-Outbound-SMTP-Client: 173.37.147.250, alln-opgw-2.cisco.com
X-Outbound-Node: alln-l-core-07.cisco.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cisco.com; i=@cisco.com; l=818; q=dns/txt;
 s=iport01; t=1763492013; x=1764701613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aF5vkLEAIHqJ9xH6JosqW7Y9Sf3asLlHWrOCvgpE7GY=;
 b=FqBtfBvj5bnkPJTreUxkVcfZUQf084ymS+Wz1ZyKBdv0GzncPECA4d+J
 eaPDKTJSQjn6Ij13dhLi4YqfPPYZVC5Jju47uEHyU6lhR5ail6W7MEw9j
 mRvB8Jr/7ziHbLPvkocWC2EpVEa5lrHj4AAMsdShNDq2r86t/lCwQccrD
 5or7qvL92y0NRROUfoC93VFb/7x/JJePxpjzwnvkHX4O8mZg3o0Htid1M
 WN3Qe4gtnkLJIGq1lv3b7EBMiKli/VbJupUu0Vw3qGQddp+m2TGn3SEXx
 wyA4qkeL04bSj3B+lOJaFYugLuu7kg7AG8esmh2dVrDntH4FFWa2lYwQC
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cisco.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cisco.com header.i=@cisco.com header.a=rsa-sha256
 header.s=iport01 header.b=FqBtfBvj
X-Mailman-Original-Authentication-Results: alln-opgw-2.cisco.com;
 dkim=pass (signature verified)
 header.i=@cisco.com
Subject: Re: [Intel-wired-lan] [PATCH v3 19/21] scsi: fnic: Switch to use
 %ptSp
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

On Friday, November 14, 2025 12:43 AM, Andy Shevchenko <andriy.shevchenko@l=
inux.intel.com> wrote:
>
> On Thu, Nov 13, 2025 at 10:34:36PM +0000, Karan Tilak Kumar (kartilak) wr=
ote:
> > On Thursday, November 13, 2025 6:33 AM, Andy Shevchenko <andriy.shevche=
nko@linux.intel.com> wrote:
>
> ...
>
> > Can you please advise how I can compile test this change?
>
> I have added the following to my x86_64_defconfig
>
> CONFIG_SCSI_FC_ATTRS=3Dm
> CONFIG_LIBFC=3Dm
> CONFIG_LIBFCOE=3Dm
> CONFIG_FCOE_FNIC=3Dm
>
> You can always add the just a one (last) line to a configuration stanza t=
hat
> can be merged to the .config with help of merge_config tool. It will take=
 care
> of all needed dependencies.
>
> --
> With Best Regards,
> Andy Shevchenko
>

Thank you Andy.

Regards,
Karan
