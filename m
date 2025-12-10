Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F652CB424D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 23:29:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFE2340D8B;
	Wed, 10 Dec 2025 22:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rRAofov8OlVH; Wed, 10 Dec 2025 22:29:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C343C40D9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765405745;
	bh=sIFV8x5lmmXZg8kae5S9jDcTJnxSyeko0VUo/PHvc1w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QV6eOV7XGyNiLFX5ctoAGO8GdB5W81J9qH5ThWsJ32KaI+TKPLcD3bW+xphF8ZoOL
	 yy02SyVb60UZ8iGwVgJpyNMo/hVkvWhab015sMgW/mrcuHaNbUd5oP7maxpMIj6ECk
	 1ucTrC2Be7G5uSeYaFeJBP+Hm14CYQuAb2S5NkL0G+BwEmdEaDWYxd1oiDJ8lbzMj0
	 YksB6McBHMZli7/sM6D9vtK4BH/0J51MbeO8f5P+MydxMl7Y0saW56ym2xCkfskKAP
	 S3SF2RzmZ6JOFDcdDIcugj6te0/3iqMvchG5lnOWKA4XTd7DXDniBQji8sKTXpfwU7
	 2BBb+hvWqj37g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C343C40D9A;
	Wed, 10 Dec 2025 22:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A14F7E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9373661C2F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cg5iIijKSJ81 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 22:29:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5B3B761C26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B3B761C26
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B3B761C26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:29:02 +0000 (UTC)
X-CSE-ConnectionGUID: rWKOlmVGQJ+VpDAnqUW9kg==
X-CSE-MsgGUID: P2lBflOYQR6KDCp4fW1Xvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="66387418"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="66387418"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:02 -0800
X-CSE-ConnectionGUID: 4373CAXsSUKhrNyDWNBOwQ==
X-CSE-MsgGUID: EGcV9GPdR1mb0D3QpWYXLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="197437511"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:01 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 14:29:01 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mjiDz0tUIjLkd/3jTocyW8e4p/lW9mDR6hyxd60dZ8Y9nPbRlSlPCYmbtrHhMHbKuEuk33rrnRG5tncMi7KcQij1RQafUbq1CxESnPtea2DMTqubGJdqoE5CZYKzp3P4iNDTkq4L5d6jiV6P9DX7VkGVbQUyMB3ptnKoVlRlPGrkQcF5h0+ZnzUGtU8dDuP9f35OYRWTLtFUYCvfX6Hh4B4mzXiynrMfkliZeOE/F7tAzvkvYmKcImNJhIblTTsFQv/2Jf+3cjqZ2Jl7T1VTgJMURDk3B40K1G3+pmbOKuII8DEJ0dCcGr29bsd/F9AFVBmgpeFa3cS44bzH0EmCMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sIFV8x5lmmXZg8kae5S9jDcTJnxSyeko0VUo/PHvc1w=;
 b=R5JjYs8ilZ4MxYp+h+vWYZwWTFcvnJ0GJsprHTc1EtOXI9I8nUkknQkyE+mL+8JUo6Sh81z9zXPN3T974sLKf7oK/fhkuZlgbNed/G4cN0Jmx9lsF75cITp2F9tpM00OOStxeuGkwbQwEpXWeSPk/clCvmXFju+sGUb8p0/l4e0qIs2/nODU+3AhDqId+am0uCIh3izZSxUIC8moJa6DrsSVe31pP3Ct9+/OkS0IW2h8aDht0es8kyBgxYcb4FJEHFg+ZjLNdwq4l3BsCGlIpCZmpH59ZtdJ4Fn1HlUe/8elZO9/92EPwdunhywKw/Uel9bf8O2finUYaTRzLPOn5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 22:28:58 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 22:28:57 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>, 
 "iamvivekkumar@google.com" <iamvivekkumar@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/5] idpf: detach and close
 netdevs while handling a reset
Thread-Index: AQHcWnyOsqj2pVE8GEyzMfkx78hvprUDbdYAgAAVJYCAAbc9gIAWT9Wg
Date: Wed, 10 Dec 2025 22:28:57 +0000
Message-ID: <SJ1PR11MB62978AEB342A7E3CA506075C9BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-3-emil.s.tantilov@intel.com>
 <aSWyYIsoXNlpsQn-@horms.kernel.org>
 <3e9dc8fd-9052-4c53-ba40-5904306d09fb@intel.com>
 <aSc0k8qUqQyXr3VV@horms.kernel.org>
In-Reply-To: <aSc0k8qUqQyXr3VV@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6681:EE_
x-ms-office365-filtering-correlation-id: 80c8582a-26e4-4324-5fa4-08de383b829d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cHm1VxGjJISb1YtW6DBFL8nOUoN2Lcw7CwYWVeUPQzPwp06oQ3Xu11cNhXC2?=
 =?us-ascii?Q?S0UvPM0Ty2p4JAxe+GnWeVSkdk5yI3FDEdxOSbxuWZO3PN0rujdM8POb0XKZ?=
 =?us-ascii?Q?fmr7EoFdN8zSzNjjSnNqgE9fiGyo5ZQ47bR0sbTucVvhTf/AHebM+Xg9f5px?=
 =?us-ascii?Q?Y2lSMcIcuqgR46eaXg+aKGFvuGlxfPsxCobh1Vj5uo/9+fEmpkohIVtjPvqg?=
 =?us-ascii?Q?9N81NM8XvFsG6oMvWi4psv7gLKZPRW/hlAPOH+Ea8Vn59k4c85gZ9DqLl8i9?=
 =?us-ascii?Q?0mKqYPB38VYZYsSHuQlYMrMSSOtJfaUR7X983Yfe9R8Ljz/wsnf7pzbttSAy?=
 =?us-ascii?Q?+APFq8OBMijXcZ5jtE+6ydJv16YTBqzIM86rCknHLp3Lkhx9msz9Ja7ZcQxm?=
 =?us-ascii?Q?gdYkunTTr9L2c0lq/+4tMP7yNjaE26ND5WAuoeKWYmFQbzvvFXFUo93zq2te?=
 =?us-ascii?Q?lPiRk4DTOfV6T4w04C/m6XJei/Cfybvrg2l9OzfKL4VWIy0egS6y7koFn2bi?=
 =?us-ascii?Q?gBghzc4cdZLIhCfH0S5Gi0WXRIplY4b5Um3sqFyF8O1MpHLNOxhLSWhf0Dft?=
 =?us-ascii?Q?OblN1CxNJoJ24C8GQvvK6NLV0rDMEz1+sPq+BagQmL7LNoFMgynFsXT0ySs3?=
 =?us-ascii?Q?6/OgWsPLB7hJpeNw9sq74SFKIHDC155pT6yACxFmone0sn32vehaCuGcX/Zr?=
 =?us-ascii?Q?XvpEMIHzZQZaoBS+Cr1X9kJbtA63aGHlIx8I/5sJQRrg87I9wDCcfiA3772F?=
 =?us-ascii?Q?2wTmbg82yTi8YHdz8L3EN6I/Pv4Xa1t9ki4nzSTN8so2jCvltdWEU8gDzQ8u?=
 =?us-ascii?Q?Wc/iXMtEnvfVE23/8nAQFyK7wZKuTtfy3skAMLk6vw6H4QIcNZ1RexPJgopL?=
 =?us-ascii?Q?py82Vn1uFikQiL7m4A7mqZDc060+/1BtdV+jk8KjYxq512mA6hv8g25XpVGQ?=
 =?us-ascii?Q?NnJL8QugveVDltiV60jBHJyxAl2MLF6wXRdzv1UxpBJL5DMS98MYpDAYJjqj?=
 =?us-ascii?Q?JOK7nQFYx/U07TLPR1lbnURIA+NKNkIZVfcjmHs/4kiR7MNLgJfdh/ffUn99?=
 =?us-ascii?Q?vv8pIp5AJNsstX5xXTiGaOIiWG4aUVKfejcqVvKJ3XO3sr3iH5EAoouOwRen?=
 =?us-ascii?Q?4k5rce/d6zV2kAxEETP7HrDkpfj3DpDnruD7tODbPMBGHxOd2LyUWBMFOHm5?=
 =?us-ascii?Q?pTjbIN08keKAdUrYuZHEcrLPS5Ch/oCYl/B4nJIlhJrdFhHFUKv8z+G4wqB2?=
 =?us-ascii?Q?cw75SYbHunqorbcQT9FDN2WQqfnq60B0hrUaB/z9dXTrzQX+PiBRh9SVAOCO?=
 =?us-ascii?Q?B2qEvkzFKuBk+alNfn8nv3ML3McVHFJbSpX4eCBtJ3gHNe+wAY6E8YMNuyEF?=
 =?us-ascii?Q?sT4omp4a2qPybw2CFSos/hNokGeV+cSySYUlDYuCYyLEijpJSXzywxwFSgeP?=
 =?us-ascii?Q?b9oZWQnjE9BKAXxnlgOVUGRU0BpzP5925Wf+NZII7IzjSmTU3uQ1lGwvj4Iy?=
 =?us-ascii?Q?o1T1u4ED05QEmipb+zbe7kHXEEX4UOFDuUBCDRtoLPZ7HjHRI7FNeEmfMA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RMaHA90/3pXe+shvFi68z9DWQV/OsblckmoJ3U0oJG68Kri7HZwVV8u7VZ2F?=
 =?us-ascii?Q?LUlWVAoOLUiGpAVonJAsYIWmSaJWU5dum02VJmCQp+Wk3qeYmScZE160eHrt?=
 =?us-ascii?Q?eaQJboH5zxVxRpdsN1Fm8Qx4YHefFxTAqnSikHTlZDQmq9X3/lBEZ1eE+frr?=
 =?us-ascii?Q?c3OttDzy6Gh1KVDHIDID/jG4KpN6GJDjaGJqIHxffQkNkpDacicRcfgFThH0?=
 =?us-ascii?Q?62yeiosKuFHv8h6DKrHuMs7plydP9H4R4CUoqyAc8gugCxSwF7jl4VaTH2r5?=
 =?us-ascii?Q?IKl8BBWik3mDP3tQDRht5pDj4DfepqrBjC6KGQ/Cnyy+zGvKOL2Pn4cGRfXG?=
 =?us-ascii?Q?4dNnrG71Zk4bHZ9kGwJ2kqG2WZhV4z/iaKln6CJW3rNNeuglFkgy4ju+Hctz?=
 =?us-ascii?Q?OALucVaM2wjL5R11VxzygH2sUnieGMJqKx4CYTdg5RWRJoEGo1Q6RIpNxXwC?=
 =?us-ascii?Q?2fvnvWCANuQQ1lKk3LybcM/R7eDVQTpfmmSPwJ27nA+Nrbz3hYOTzTXZvu+x?=
 =?us-ascii?Q?3XnWDDa8RXbTw1q8a05BhsGiL0IVfAQIR0x/r2qI5pY9lYrWsmf0dnhstevR?=
 =?us-ascii?Q?jr7Z9PLs3/jduO4VJSwj48qg8zZF30rdS5lvSpEgc1B4DPhJncP9XFmT7LCI?=
 =?us-ascii?Q?2vmbJuBWRKp0xaJi54tdhlNTeODQXOjy1ueuv0Cfrhu6kY7gMsdm/FwASUTT?=
 =?us-ascii?Q?ux9baFCKEZnXN/mNUwoL5wuJPr+Tb4sbG4f1JxkILJmpEQa43clH+7zUaR38?=
 =?us-ascii?Q?xSRJ45+iZY4IF5do3+V1A0z77l1JRxyHQtBdwbsbmPQj4+cB4MvcXA/lQqfL?=
 =?us-ascii?Q?RHrpmv6zAPAa76b12ZGakpP48n8zTCHfo4EQ8PxcaHn+D8myCnPtxzBoHRKR?=
 =?us-ascii?Q?SYkHpYMyia0XkAz+duNDqWaHbhGDIwLqxZupWRC5NbvGwZUuZkqadbhmOeam?=
 =?us-ascii?Q?JgktUSKxUhX4Yjn395TVq51r7OvIvRqrdZaTWApaxa4jSfQuRO0vdtjxHiRm?=
 =?us-ascii?Q?SY5bAeSM2jo5M2p4Ef8sVh69NQ5cc4bKhkSzuHtYyKMM04DxYvkSNBrzDAE7?=
 =?us-ascii?Q?3FKTGFP1AJgzl4vQuz2SY8WKGMfwDmANHAr8nBA6PVbJbMl1zT+K8eUQG6do?=
 =?us-ascii?Q?Fd0niaNLW4+Ie4Yfv6pi2qiY6NfRMgFA+6tCgRn28YQFikHhjoDnH1aDLnr9?=
 =?us-ascii?Q?xAWerm5joas04ZxzhXy6jIjSojs/PzvQYE4UrPJrRgH+CeNRE1fTCN3U2RqM?=
 =?us-ascii?Q?yRYdm12fvrPxvj8eIBmhHOfil65VkLnAS5tkbgiA6dcB1/VJZUvZ3nXX4QTN?=
 =?us-ascii?Q?hou5N004aIhfvO4nlDKxApVzxiWzFxbCmasrtC3GoXSa5SCiKh7Fj2lM/w9r?=
 =?us-ascii?Q?+wEKyKk999uxeTvSwjfh8vFelciJbyY2V38hO/7U/bhYlSYLoeeTc/Bvulag?=
 =?us-ascii?Q?E54Ecubec+p4SvCVKdLHA/cmABPgUDfp+G+EeJdYzM5LuzWmziZ5SZddCxTI?=
 =?us-ascii?Q?6fmCgdquiQhvObSVZVb5CYoERjQj4MdCUGTczB5FvtbNB/asaerCxfKq3vFc?=
 =?us-ascii?Q?eLWU9d7+0hhBwqH8OYG8Oc2144aehafrrKU1bM4t?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80c8582a-26e4-4324-5fa4-08de383b829d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 22:28:57.8737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y1VmN7/JoSdBn0eE9EyakCvN7C85AhHyIXb8wrF1IknwhoZZGZeQFyBwoWkG4HQ/84wZf5AwIDllM39sdh7W5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765405742; x=1796941742;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bm86/bqliJQSTktrz4DX/fMx46Bf09T/4ZaRWzDbIek=;
 b=mEFRG+dcYKSYBoMWrfxw++VTw9nWSey04WqPx4JFiVtMTfEnlqFfp4hw
 ClqhBl7n40PX7y9U4CtRBAi0ZksiPDHtoVtK2U3qjrg8acEa1yd6dxryU
 ZAI7sHz0rSn0BJUVtaxZ+i6ISXjZgUXfbKpD22Ylo+gJAKEOiN5zfmwJ1
 ExM5LlmaUMgMF3cCM5zFYg9xZqSxeNshSmYykyrKz93JZvA1shrlUcQOU
 VFNDOCKaOl4Sl6UaNZOb/fZ1RmyqMGfzF3/X+JXiCXj/DpSgjhLg6N5jG
 4tWadNAfxVecOXGXYBgZj1Y8JWp8fEgsEvKO4r6cUODXO+buWOSVh3Eb6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mEFRG+dc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/5] idpf: detach and close
 netdevs while handling a reset
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Wednesday, November 26, 2025 9:11 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; iamvivekkumar@google.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/5] idpf: detach and cl=
ose
> netdevs while handling a reset
>=20
> On Tue, Nov 25, 2025 at 06:58:37AM -0800, Tantilov, Emil S wrote:
> >
> >
> > On 11/25/2025 5:42 AM, Simon Horman wrote:
> > > On Thu, Nov 20, 2025 at 04:12:15PM -0800, Emil Tantilov wrote:
> > >
> > > ...
> > >
> > > > diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > > b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > > index 2a53f3d504d2..5c81f52db266 100644
> > > > --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > > +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > > @@ -752,6 +752,65 @@ static int idpf_init_mac_addr(struct idpf_vpor=
t
> *vport,
> > > >   	return 0;
> > > >   }
> > > > +static void idpf_detach_and_close(struct idpf_adapter *adapter) {
> > > > +	int max_vports =3D adapter->max_vports;
> > > > +
> > > > +	for (int i =3D 0; i < max_vports; i++) {
> > > > +		struct net_device *netdev =3D adapter->netdevs[i];
> > > > +
> > > > +		/* If the interface is in detached state, that means the
> > > > +		 * previous reset was not handled successfully for this
> > > > +		 * vport.
> > > > +		 */
> > > > +		if (!netif_device_present(netdev))
> > > > +			continue;
> > > > +
> > > > +		/* Hold RTNL to protect racing with callbacks */
> > > > +		rtnl_lock();
> > > > +		netif_device_detach(netdev);
> > > > +		if (netif_running(netdev)) {
> > > > +			set_bit(IDPF_VPORT_UP_REQUESTED,
> > > > +				adapter->vport_config[i]->flags);
> > > > +			dev_close(netdev);
> > > > +		}
> > > > +		rtnl_unlock();
> > > > +	}
> > > > +}
> > > > +
> > > > +static void idpf_attach_and_open(struct idpf_adapter *adapter) {
> > > > +	int max_vports =3D adapter->max_vports;
> > > > +
> > > > +	for (int i =3D 0; i < max_vports; i++) {
> > > > +		struct idpf_vport *vport =3D adapter->vports[i];
> > > > +		struct idpf_vport_config *vport_config;
> > > > +		struct net_device *netdev;
> > > > +
> > > > +		/* In case of a critical error in the init task, the vport
> > > > +		 * will be freed. Only continue to restore the netdevs
> > > > +		 * if the vport is allocated.
> > > > +		 */
> > > > +		if (!vport)
> > > > +			continue;
> > > > +
> > > > +		/* No need for RTNL on attach as this function is called
> > > > +		 * following detach and dev_close(). We do take RTNL for
> > > > +		 * dev_open() below as it can race with external callbacks
> > > > +		 * following the call to netif_device_attach().
> > > > +		 */
> > > > +		netdev =3D adapter->netdevs[i];
> > > > +		netif_device_attach(netdev);
> > > > +		vport_config =3D adapter->vport_config[vport->idx];
> > > > +		if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED,
> > > > +				       vport_config->flags)) {
> > > > +			rtnl_lock();
> > > > +			dev_open(netdev, NULL);
> > > > +			rtnl_unlock();
> > > > +		}
> > > > +	}
> > > > +}
> > > > +
> > > >   /**
> > > >    * idpf_cfg_netdev - Allocate, configure and register a netdev
> > > >    * @vport: main vport structure
> > >
> > > ...
> > >
> > > > @@ -1807,27 +1860,6 @@ static int idpf_check_reset_complete(struct
> idpf_hw *hw,
> > > >   	return -EBUSY;
> > > >   }
> > > > -/**
> > > > - * idpf_set_vport_state - Set the vport state to be after the
> > > > reset
> > > > - * @adapter: Driver specific private structure
> > > > - */
> > > > -static void idpf_set_vport_state(struct idpf_adapter *adapter) -{
> > > > -	u16 i;
> > > > -
> > > > -	for (i =3D 0; i < adapter->max_vports; i++) {
> > > > -		struct idpf_netdev_priv *np;
> > > > -
> > > > -		if (!adapter->netdevs[i])
> > > > -			continue;
> > > > -
> > > > -		np =3D netdev_priv(adapter->netdevs[i]);
> > > > -		if (np->state =3D=3D __IDPF_VPORT_UP)
> > > > -			set_bit(IDPF_VPORT_UP_REQUESTED,
> > > > -				adapter->vport_config[i]->flags);
> > > > -	}
> > > > -}
> > > > -
> > > >   /**
> > > >    * idpf_init_hard_reset - Initiate a hardware reset
> > > >    * @adapter: Driver specific private structure
> > >
> > > > @@ -1836,28 +1868,17 @@ static void idpf_set_vport_state(struct
> idpf_adapter *adapter)
> > > >    * reallocate. Also reinitialize the mailbox. Return 0 on success=
,
> > > >    * negative on failure.
> > > >    */
> > > > -static int idpf_init_hard_reset(struct idpf_adapter *adapter)
> > > > +static void idpf_init_hard_reset(struct idpf_adapter *adapter)
> > > >   {
> > > >   	struct idpf_reg_ops *reg_ops =3D &adapter->dev_ops.reg_ops;
> > > >   	struct device *dev =3D &adapter->pdev->dev;
> > > > -	struct net_device *netdev;
> > > >   	int err;
> > > > -	u16 i;
> > > > +	idpf_detach_and_close(adapter);
> > > >   	mutex_lock(&adapter->vport_ctrl_lock);
> > > >   	dev_info(dev, "Device HW Reset initiated\n");
> > > > -	/* Avoid TX hangs on reset */
> > > > -	for (i =3D 0; i < adapter->max_vports; i++) {
> > > > -		netdev =3D adapter->netdevs[i];
> > > > -		if (!netdev)
> > > > -			continue;
> > >
> > > Hi Emil,
> > >
> > > In this code that is removed there is a check for !netdev.
> > > And also there is a similar check in idpf_set_vport_state().
> > > But there is no such check in idpf_detach_and_close().
> > > Is this intentional?
> >
> > This logic is a bit confusing because the reset path is executed on
> > both driver load and a reset (since the initialization is identical it
> > makes sense to re-use the code). This is what roughly happens on load
> > and
> > reset:
> >
> > driver load -> reset -> configure vports -> create netdevs reset ->
> > de-allocate vports -> re-allocate vports
> >
> > The first patch:
> > https://lore.kernel.org/intel-wired-lan/20251121001218.4565-2-emil.s.t
> > antilov@intel.com/
> >
> > makes sure that we never lose the netdev on a reset, following a
> > successful driver load. Previously this could happen in the error path.
> > In other words during a reset there is no need to check for a netdev
> > as this is guaranteed, but we must make sure that vports are present
> > as those can be freed.
> >
> > The 5th patch:
> > https://lore.kernel.org/intel-wired-lan/20251121001218.4565-6-emil.s.t
> > antilov@intel.com/
> >
> > fixes another instance where we could fail in the reset error path by
> > ensuring the service task, which handles resets is cancelled as at
> > that point we have neither vports, nor netdevs, hence nothing to
> > "serve". Hope this makes sense, but the gist of it is that with this
> > series applied the reset can be protected by just making sure that the
> > vports are allocated. If for whatever reason netdevs happen to be
> > NULL, following this series it would be a bug introduced somewhere
> > else in the code that will have to be addressed.
>=20
> I did spend a bit of time trying to figure out the flow, but not entirely
> successfully. Thanks for setting me straight.
>=20
> ...

Tested-by: Samuel Salin <Samuel.salin@intel.com>
