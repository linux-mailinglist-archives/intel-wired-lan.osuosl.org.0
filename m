Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99C81B8C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 14:53:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A3FF60AC6;
	Thu, 21 Dec 2023 13:53:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A3FF60AC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703166802;
	bh=7xoUHdlqd8gG9zPh5+DfsUJbD7rEP1wrARnsa1PDYa8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rluQCV/E1grw1z84Zd33r6Um3VyAwrDLdud0rIFIaKc1VRyPS3icqcIhg8CMQq40Z
	 XEn+LQDWsE9+ioTHXGuZG3Qv0kdtBQP+eRpKqzkTNyp9ICPGf8w7Tkq7X5QqZDK8x8
	 1E0V2pmiZg48qGfWxeAQ+UDizz2sIAmPQHuUeP658cDSm/hvNiDo+9M+3Es8C+GfR1
	 Xuw15SqwLAGPZXSxMAet2k7ukNO20MvXvQlyRQ80LpIohEwq3DImle/nCNPataD0L7
	 YgVUu/3k7PKett3zEfWumwHCg3b7laUSGMKVxuDg2YDkyXPnzlsRzH5gS+s/9z5DPl
	 d8d+FhB7875SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l035XgeAIzAO; Thu, 21 Dec 2023 13:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D62746066D;
	Thu, 21 Dec 2023 13:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D62746066D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43F321BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C7D160ABD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C7D160ABD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTrJfv1IUP0t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 13:53:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DFA260A95
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 13:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DFA260A95
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="17531670"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="17531670"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 05:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="810974188"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="810974188"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 05:53:12 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 05:53:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 05:53:12 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 05:53:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7kZm/r0CY5vsr24F48i5oyg9Ek1Gi5AXHcxpv2drZPgH02ulRHgBgC1krxD/5vB+uhn5LusKryFZTBxnINUKKjaegWQExLBKKfURWXGNx9xg9OpHiMdqIaq/MuTR0v+qKiEgHsT6Tj9zeQO9RPeWeNDoUJ6CZAnmdZ9MxwGGwzGK/KeEgHV+wa0giWmf0yVTzq374GYTYGr5rnwmBn2J6s1/2oL4NVy2FRUlVptaNfs/1tLdoDwDcONtV93LqknQ6TzogWG0D9ILaCjhsKP8OwUt8x8Us+2AwQYTAYN8j/XZz5Cwkp51r6rTiuvJLnzz+dc1Xo+YHqLJOahyDnoyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+d5VfCaklBB1zoSCy8lVK4gJhVERUI8P2CFaluq3MA=;
 b=I1C4C0lNMNwTKrMpbCf2+Zd3m/hA3jL++6qxTGR4F42uqJ9aNDKMn+iuxTilQCrVYmQcpR7zxLZ5pPW4RRu23FWLRX1DAFeittN4IYae27SnKOEwSMD+oZutxaGJ00Rrwug3kpIR4FHlWJ7UXZZw46AZMUg7pEd+IQdiI0wVty5BYK1c8GUppXuNW7DOSKKCuaU6pU0orYJeeIQM0m/nOntj/TGR+tZ9b0m4uaIpJi3MZGyol6lO32VIWXS/1bDErOD10x2HY+6Whmnu3vtdWbbkkZInd1+WfZjLlrd3rnDf+58A/k5S3b12t81N/zcX3Iq/HV1Yv0p7e1Wb0p5paA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BL1PR11MB5368.namprd11.prod.outlook.com (2603:10b6:208:311::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 13:53:09 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7113.019; Thu, 21 Dec 2023
 13:53:09 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: fix phase offset
 value
Thread-Index: AQHaMcNhqCMY0NLpo0WHXA4OqZ3bMbCzxVUg
Date: Thu, 21 Dec 2023 13:53:07 +0000
Message-ID: <BL0PR11MB31221897EE4BD6DE8A0D3E33BD95A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231218145855.3605898-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231218145855.3605898-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BL1PR11MB5368:EE_
x-ms-office365-filtering-correlation-id: 76c560f2-467b-45f2-500f-08dc022c2979
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xe/klLJSP76VMqr0StlHhteX4ZO7wRwgoGFSv4jPyDR2KD6b1pBKDcs3YodgrhRAPpSidLxMBPKFJ537z8yd8Cicy/jdmAfszAZLmWI7fycLfHK4N+gyc+Z97GR+ONuZj4FnRxjzl5XfmtMWLmCJLROZbbrFe2N8FFOTB4bNL9ru3bcestVhdQHGwk5Hl913pcrkPc/r77nQMuZLCC6lODv3sLs2OVqA6pfKNkKEeBfKvh9SLjBBix5vOi5jtmt+vgZ3HnVpJfdbGQSgyQviNcwWmHRDRGnF3s1AWXXuaXTFnrtC2l3XHFpgXUm/qT/HcCeB6Zixr9zKDfKTggFIGOn0R/kWqwVN4iYvg+chzoYcdSTpvuvdKyVtIsWITGsgnN55M38ix00CvOT8DxGEYtWrjuxfWzNIIB8bZ8i44jlxI6uQzhVLp0xWVdj+OAsO2brL/1Nx7HYPw01SzXfjVsXU7AfcolSlPQxpZ4X843ma4hHfhpqabKYkztYtHUUunLARwmuj+GC6LuGn+MkZewfI3CgVEOwH3klGZd15rEYiViiTxFyevfs5euHoCGsB9zwHyorBsAOIeYqBtXmIl9of+ObcQoZYyvVsjolJGHrKyOZC7gvlYV9l1MCQ+8LC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(366004)(39860400002)(346002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(5660300002)(2906002)(86362001)(122000001)(82960400001)(41300700001)(38100700002)(110136005)(66946007)(33656002)(76116006)(64756008)(66446008)(66476007)(107886003)(66556008)(54906003)(26005)(316002)(71200400001)(53546011)(9686003)(6506007)(7696005)(55016003)(478600001)(52536014)(8936002)(38070700009)(8676002)(83380400001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?slZUJthUDFMHvgYgboElo4HdJafDbxYPXxtZCXqlGJfK6cLcr67mfSytaiiI?=
 =?us-ascii?Q?7vAZqKaqqSvTznlvXaVjNXlzuRE3Tq/SkTxKXM3MLd7KL4erjo/idK2ekar0?=
 =?us-ascii?Q?+txEhbtDNRGdy4bD4t1Gv2XqmLm9gjhTRHz0C4J12HDSfbKfQcDsKwacsDlq?=
 =?us-ascii?Q?ggDn++A9y79LSnijcC2aW86RcMgDB0CVKKfjU4fJ20jktWrldnBBvpyhPiBn?=
 =?us-ascii?Q?6ruwFtm2vfbi7d9gBnJGXCoU8DyVYE5tS2LX4dhD+FQJLNeH5hIgfxwYNdrZ?=
 =?us-ascii?Q?Iw/KvySSGeLN0ISHTitzLfORj4o99cK5wMtDNSQkOW07SLd1CjfmcTjrA1Lq?=
 =?us-ascii?Q?W50dhqLJ3zNzh7kpVMllQhOF4rQLG8c+sTYwhbwWsSGTqLzz7AHJ5fVVhJ1X?=
 =?us-ascii?Q?6VLKTQbMcigERqkJDPnzgQhhGHBBMtng9C7XaCDC0I98CAPivQQnQquMLwqA?=
 =?us-ascii?Q?+R32YbLLTzsxVLI6jyuz1xIQN8psRU06OlUlN80T4htMogqf4Wii3hV+9dsm?=
 =?us-ascii?Q?toW4xoPc4H+b3aFyIO6PMj67g2j02lyPjWI0LWOoy2/HzR3B4gbCt3P84pEr?=
 =?us-ascii?Q?7CGw6pBK/Rle8TvUXW2Z8V+HSXr5bau3Rx0/B6DGdwpZ88tN8YQL9AbvNK64?=
 =?us-ascii?Q?hh7AYThXQBnsUDlRtqcoxNJBM+bnz7qSOEV4cqn5G19A0zjNX/yapvNOX7o5?=
 =?us-ascii?Q?OkafQ6XrwzTlZta2Z1z4SOq6QD9QmpJd2OnaGaM2ue1xPQ2WBmCs/13Npa0/?=
 =?us-ascii?Q?V9vRA1/fdnsUdNB+UNJtk72sTPAH7KVj4tB1pIXH9njwiBveQ+01iLc59ja8?=
 =?us-ascii?Q?sShioHLCkwB+Aq1wir7QPTSxvCw2XKR8iSrbVNHR3YSwbV0kg1/KjwX1jt0Y?=
 =?us-ascii?Q?JB5JW/HnsGymOLrFyLdYcPp/f/02XT8kDxixYupg35rfq5MqX9F8tVIn8VKS?=
 =?us-ascii?Q?GYom1zl3MO02JDTcM3x+F+FZUwOeKYBY+r4arwbWtfbM4QB4Zq8rRcEkxkz8?=
 =?us-ascii?Q?9ievSNQAgZMv5hzBxOb/2wDPQJ+cT61BIG0B0pR/DtRFp8zMSu1yhozxbDL+?=
 =?us-ascii?Q?DVbp0rhdCANKiTN/DjD5z6hx+pZPdM+2xGAj7Ls8tS8yOSVKFVrMkesaUERm?=
 =?us-ascii?Q?Z7qb+ywwu0Gy5+sbXYOUKywC/hPm7Dx+Q5U2Xun8amXn0Rrpxw6aK4FfxMLz?=
 =?us-ascii?Q?WMyKJLXKyDGulq+i4e9LjjFLLmhPMopmdv0g2Kuh5GS1HyehvV4HsjkNfvSX?=
 =?us-ascii?Q?3r1h1D2ZRu3IkxGNwpK3jOimoFIAT6/HSqB+At5WG00Q7Sn2uUaLTa3z955s?=
 =?us-ascii?Q?wffBnm+xZwYKG58T/7yw7NTbFhgnnvpOpiUc5zUYfWaQYmJJ7IxXX2PDlIez?=
 =?us-ascii?Q?hf6W8WpbpJC5kLUD8ps+XI+APwHgGYR2ZbOySLcGlewz49J7DRqP7EM3ayPG?=
 =?us-ascii?Q?1ac34xUwVlzQxXiXFuAJCO0rF8YaPpHIgvuwHhKka4OChWQ1cVg8Lc7JkgVX?=
 =?us-ascii?Q?5jxZ51+jvUMayvCn8FhpaR+p1thIHdUnaZElLihgK5tUpA8k4XVlfhSoORNX?=
 =?us-ascii?Q?3mdMRbbDl6V6PRMb2t0Zkk5Ns1O0G7sWgqPns4uY9N3An+KoOXWqyk/2UDlB?=
 =?us-ascii?Q?uVPKCir0xVdMxC8WXKFMwN4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c560f2-467b-45f2-500f-08dc022c2979
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2023 13:53:07.6863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Skgh0JSQiRoYDIUB84y7odqGfrSVnbSt7F5//6ZM3QgWiGCJsOXe898/TI4w+WXgoafeNILesbM1E5rfT9TxQUqL4MTKT9hchLW6O0KLACohgD57+pLUKbp1qlajroEz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5368
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703166794; x=1734702794;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ALQKL5PcOb+jQ9k2zfjoTd55AyXTteaEXzST0HxZADk=;
 b=HPjpoQPzacZrmJXgE9ftbZGJb3Khzc2KTbyOE4RJcZk/l1N1CVY/mfNC
 FI/7uyHnLvGaNz0nlwaTYDGiBzU8m8VYF0winGYUWotChrXGENv4R5PIM
 6QDUTSNtGp729NrNqS6TSlubPJhT27OxkE3mmy7Iibuq149CegvlcJSNS
 HLwZFtu/oTzDTd/JiOQS6bXKhiT6sjH6Jrt9Tdh1eRSAZ+PflhbRwEruK
 yz6O/Aw04JuEeKIMdo2DOeMqiQt7DnKaIdXfPcTyAJ4obvb5SbGuKeQmH
 +KwpdonP4umHR7e19vwhwe11UTXqu5C9wlxIB4q0jeFvUSIBnKEqYBtgb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HPjpoQPz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: fix phase
 offset value
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Arkadiusz Kubalewski
> Sent: Monday, December 18, 2023 8:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: fix phase offset value
>
> Stop dividing the phase_offset value received from firmware. This fault
> is present since the initial implementation.
> The phase_offset value received from firmware is in 0.01ps resolution.
> Dpll subsystem is using the value in 0.001ps, raw value is adjusted
> before providing it to the user.
>
> The user can observe the value of phase offset with response to
> `pin-get` netlink message of dpll subsystem for an active pin:
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
> 	--do pin-get --json '{"id":2}'
>
> Where example of correct response would be:
> {'board-label': 'C827_0-RCLKA',
> 'capabilities': 6,
> 'clock-id': 4658613174691613800,
>  'frequency': 1953125,
> 'id': 2,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 6,
>                     'phase-offset': -216839550,
>                     'prio': 9,
>                     'state': 'connected'},
>                    {'direction': 'input',
>                     'parent-id': 7,
>                     'phase-offset': -42930,
>                     'prio': 8,
>                     'state': 'connected'}],
>  'phase-adjust': 0,
>  'phase-adjust-max': 16723,
>  'phase-adjust-min': -16723,
>  'type': 'mux'}
>
> Provided phase-offset value (-42930) shall be divided by the user with
> DPLL_PHASE_OFFSET_DIVIDER to get actual value of -42.930 ps.
>
> Before the fix, the response was not correct:
> {'board-label': 'C827_0-RCLKA',
> 'capabilities': 6,
>  'clock-id': 4658613174691613800,
> 'frequency': 1953125,
>  'id': 2,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 6,
>                     'phase-offset': -216839,
>                     'prio': 9,
>                     'state': 'connected'},
>                    {'direction': 'input',
>                     'parent-id': 7,
>                     'phase-offset': -42,
>                     'prio': 8,
>                     'state': 'connected'}],
>  'phase-adjust': 0,
>  'phase-adjust-max': 16723,
>  'phase-adjust-min': -16723,
>  'type': 'mux'}
>
> Where phase-offset value (-42), after division
> (DPLL_PHASE_OFFSET_DIVIDER) would be: -0.042 ps.
>
> Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
> Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
