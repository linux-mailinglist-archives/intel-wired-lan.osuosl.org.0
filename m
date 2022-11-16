Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABAE62C45D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 17:27:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C90A40136;
	Wed, 16 Nov 2022 16:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C90A40136
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668616033;
	bh=Tqw9MNTSqlkGOT27veKUYHICuTRfUnULP+ZAGLwvXsI=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rKMMsTw5d1Fyydwq+wCA4XnrkSfrFIFDunvcV92455m2qdm+NyXO+7oJooVHLzBEH
	 Bzt7pFqFCpUzjq92rkeW0yir51SCZ/ggmVHcMgzGMX/X+GSwSQ+MHEzf+gNYF1Jgjb
	 VTOMt9PteSy8DC77ziabPyVh6AWCFDiDQdj1A0kPn2uRwGp4rBducBbHmuER5rKS/X
	 Hh7asFb5v84RLEymgWFV0QtczHQpd9HdjRTY37gDTO9/DAuskY47OmIPmVa6o3cdxf
	 M9lr5j6PKD7HAyRX0XMxhwVdV4FL8MqP6v1rMHXe9boG1smA04PEuge1X1oAnU04hg
	 ZtELC8s8944zA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUki4sdrvApH; Wed, 16 Nov 2022 16:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F39140BA1;
	Wed, 16 Nov 2022 16:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F39140BA1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCC7B1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3BB660F58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3BB660F58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2ONTZ8TmiAn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 14:39:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6787860F53
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2133.outbound.protection.outlook.com [40.107.20.133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6787860F53
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 14:39:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NpqD82hCE9rxtmrdpuKxitpp5s2hvT10HrPTfnD0b1enCUWqmXI0MpoMClnNan3SKKu9HwK2FJw2pF1lq6wLNvRHpeNWFXDMSMcrxGe9iORpxWa3nwXgI341U/gR9Wp3YRgCaobdK1CZcpxpTHbdLjgEkn/F7jxUgtQLm6Df/BUQI9AtXm5CukLRk4/qAQu8H82/PLr7e1oQZvN/QStuvxPCXYeR5Suh+4jmEEhB2oHXeKbTxiVQROeaSttdMiYhyC4d2Ja7/KPjotD3YBZtCru/BFwfA+BZL+HWpqmEEvK32B//tPHeVKYwJmzN9UZZ7VULhfLTeKlX/JeE7zON0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwvWTKdUKovYl5guN334mXfW7pVFwskR45VxUmTumyE=;
 b=gmPbX6rRr76uPd0XxNxoejCq5nneMMMXu5ym4QQ9NdhSNSgTnu/5mXt7xoOPMyWQ1+WqbWn/r8u6zLuynezOSi7Z7F1coaQBj8/I/lvaeIGJIWq7VBxjgzErL2mrfdlFb+fuTs8w4s/+OXdf/kYFhmeno/WQ362fFOmJ8DUo/EM+Xq8l+1PJyzYSVoQjs0qT6rhWKsV4FJyqtu0pGeLvbPf+zmVccUhKRbcIv7JdBHX3o6rx94PfHoIJ3dCKKedllZLYTQ9G0EcvsL1kAkk049VH/lMHpIORQ/Ncjx86UPw93q/gVkhu1SfcxvYR8xm8rSylscADD+nxeZUYZPaJJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=asocscloud.com; dmarc=pass action=none
 header.from=asocscloud.com; dkim=pass header.d=asocscloud.com; arc=none
Received: from DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:149::8)
 by AM7PR10MB3256.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:107::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 14:39:16 +0000
Received: from DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::617b:7d03:57bb:6015]) by DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::617b:7d03:57bb:6015%6]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 14:39:16 +0000
Message-ID: <48e8a46e-2c74-22be-e95b-dd0d67ea2012@asocscloud.com>
Date: Wed, 16 Nov 2022 16:39:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: intel-wired-lan@lists.osuosl.org
From: Leonid Bloch <leonidb@asocscloud.com>
X-ClientProxiedBy: FR0P281CA0057.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::14) To DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:149::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8PR10MB3925:EE_|AM7PR10MB3256:EE_
X-MS-Office365-Filtering-Correlation-Id: bbfa9534-a05a-493c-c442-08dac7e05650
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yTa1Db68VlYqXmxCfQAWmOExFzr+rv8EYg3N9zKHGh8Hs51cUMUAnvercDYkgZZRUrcJqAoUieAmDuwjQ9ziB+wHsnbOritma5Hi9JB1B6WOk+RTaDPaDXRu5DxO1U4h8/vtZAnLWsp+egG1j8sVMmU3RReJ0DFXdD+44BZguH/cF8jAKxcqjm5bPAQRBhpbHjwAnEbfzH98qL+g7wGkEkMMz5gVMhDoAvLBRn0vyVYQ9MUpLywgiDl1DlPba6l2LlM0yFcwr3Pessd7o7FoAchS+4JX2hbChUBLtrjvpQD+U4C/DE0Bb9rFiAabbDl96X7sO+b2FbA+o8vL1qA80EVlanfQ9HV5k4m32utADSZLXNLLK3fbKTizDJMYYWf5MqL1MaQtLyVkfMSxwEXcyCqPbi5VhALwxa1gI+eN3ePMmowXsccNwuMFQ+RK86VjebrU2UMhucd54yJp6dlGbTAEk2K/+j+QiZDqz93FMVrZj5buPu+Yt1KIjom098Vtvo22Y7ajOc/+LpvoNfxn7j4oVxBQOzvVf9O5doNlZi7B9tKNztApRRG4U7DmIRvKDp4fq+OCpkPzh8oOPfCqH6uIcZeFo3WHsdbLjmUE+fsOwSyap9WYDLzVy/gQIsNQiuO4uI6+lhbY0i33sp6OF2DHIBCie2QAF03jHINMhMfCuydZsZ5OEHai6n0uVZ1+YPBeu8Ckk8iLKErciJy2SQThVZ8aFY+/yIoJ+vj925KekbNXvErqPBNh0zbTsN/RyxMBWZkTJeb9YAAbcKnIwk3jjm7yxhV1JQSXGY/ynCstpsriTRMLn6Jtu14Wo66l
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39830400003)(376002)(346002)(396003)(366004)(136003)(451199015)(31686004)(478600001)(6506007)(54906003)(6486002)(6916009)(6666004)(316002)(26005)(86362001)(6512007)(31696002)(8936002)(41300700001)(38100700002)(8676002)(4326008)(36756003)(66556008)(66946007)(66476007)(2616005)(5660300002)(186003)(83380400001)(4744005)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHVwUUZJYitHUEl2dlVjU3EydFdzU2toZFA5RFowT0JqN0Q3d2JJWU1iUXRz?=
 =?utf-8?B?ZHEwcUdXTnFXbzlHVzE3RmpNSzZXZHdNMFpEeFhhTksyQ3pVd2QvMGdSQnNm?=
 =?utf-8?B?ekp2YXZ4Tk0ydTlsUnk0WEhMUlg4MHZHb2habUc5UDlMRGFMdm5ybUZWQXhT?=
 =?utf-8?B?SnR6YVZtaWpyU2grTXVPZ2IxZjVHK0tydFNlNEdQdlhRS2tiNzhQSjR5UEZz?=
 =?utf-8?B?bGpwM0JyZUcrR0N2ZGNnZ2hmLzk4cXJUcTdiRElZbm4vczlBVWc0d3hIZUtP?=
 =?utf-8?B?U0dvWnpmMWE3Nm9aQ2xGc1BsTHJYVWVtRFAvYjNxV1I3UkFxcW1oZ1Z5T2Jh?=
 =?utf-8?B?U3NWUTM5Q0lES0JRVWVCK3lQWVZtalg1NGZVbXN6VVN1ZjBOa052c3l4VVBj?=
 =?utf-8?B?NTFLVTZ3M21oQXkwVStiSVAycjVHU2dnamNzQzFTUGV3b0pmL2xHMUpITk1H?=
 =?utf-8?B?N3B4WCtuSkR6R2FqdGpIeWRnQ2QxWnRzajhLZS9qWWpsbVNvbHNkMzdCK0o4?=
 =?utf-8?B?VGdOTGpwYm5JVTJOTnlhdmkvWWMrOE1hRTlqNjAvL1VIRFY5Znl3a1NONFpu?=
 =?utf-8?B?TkFBdHhRMG1RNFlvRE5GMHZKbDAyNFl2UVl5ZWc5eTJ3Q2ZFVkJjMnE4a2gx?=
 =?utf-8?B?d0ppWmNWQjlsTTAwNzhiS1p6ODZTU3Zub3JMVExQMlUrTXQ1WDVDbTBKR1Ja?=
 =?utf-8?B?Vk5WemhMWmpVUHdTYVJjZ0NvQkFRSzQ0bTV5QjZLaUlScWFUZzdIeGc1OVVG?=
 =?utf-8?B?NHBLa1N1TDNqZTJRV2FvVkpOZGlNOGFwVnFsZVhqekNrN05LclREV3orYnk4?=
 =?utf-8?B?U3I1ZTRiRzRZb05zRFJkeWpSMlpDblNoZWc1UUdyVEFESS9qVHM1TnhOM3Qx?=
 =?utf-8?B?emFiYmh5MlB0bnR3RUgrNmgrT2h0RHUveUxCY1J5OTRISVZHNThFandjY1hi?=
 =?utf-8?B?S3VGTHVFVkpJUEJzS25sL2JTR3RxTVE3akhxdlNyRG5Hc1hkQ2RnaW1FeVpV?=
 =?utf-8?B?elNkYVZpNzdSRnUvVVJCdkpjTk5vT2FXN09TYS83Vy84ODNQWCtpVWlZY012?=
 =?utf-8?B?N2YzZDN3MHNyVFdTcHZndWYrcnJtODM1ME50aFBUTXNQZ2UyWGNXcWs5UVYx?=
 =?utf-8?B?blVFMmhPYjF2ajEyeXN4c0RxaUNHR2hmRGFWNEZ1YUliRFRtNjVha0cvZmsw?=
 =?utf-8?B?QmFOWjVQRm9rSVdyTGZDR3dwTUJseGxRcFI1aEE5dTFIV0RFWmhUVDd4YWVl?=
 =?utf-8?B?TkJ5TncwbHBmM2FLU01pMmZXK3RjdnJ5Rmtqd3ZMaTEwQjVnSlk3ZEhwRlE0?=
 =?utf-8?B?K1lxRDlDUnlicEx3K2hUSUlDRTNuTElMYWpSWDhvNXNuQ2J2eUt4MVByamVr?=
 =?utf-8?B?MU5nWWgwRHIrcGc1YmoxekNNRVQ1a1UvWThQSWtyUGt5ZlNUaUoxRGxPSGYx?=
 =?utf-8?B?bWNJQ0czWGVXZUpIOHY4b0w3ZFdLSTMzdXpKRU5WVVpMMGxQUmJYYk1IOFNU?=
 =?utf-8?B?S3dWUFZrdDg2N0Y3NkU1MzVHa3gxMHhMeXFQdFRlbnlDaldFdlIxayszUVhG?=
 =?utf-8?B?UTh0Q3pqdFV6N3BsZFVBSzczMStBL0FOUjA5SlU0a1N3OXlDUWJaaXlmVk1H?=
 =?utf-8?B?eGxWbUU1ckNoODlZZlV6RWNNZVQzK0kwcTFGcjhQU1hrdGRNRWNjVVE5U1ZH?=
 =?utf-8?B?RlVBS1gxY3lsZmZ0aTBaeWNQQlZLaVNkV3dka2Q0VDVoMFNnS3kvdmtzM3RI?=
 =?utf-8?B?Y0c4OVIwcUF2TEpFZjd0czNYS3pyajdGODhtako3Wkt0dGQrUmtMNG02NXVC?=
 =?utf-8?B?aWVBbC9Bci9tNVNVZHhKa0FFZWpzc3BZVnpWNmhQaHVpdHExTDdKWTloeXRj?=
 =?utf-8?B?TzQ5NlRFbWpjQWU0RHBEYWJTOExxKzFDNkdhN21yWUFHbkR3RmdZaVE1Rjh5?=
 =?utf-8?B?ZElvZzFLT1hCNnFiQTlQY01YMFJoRUV0M0Zidlh2KzdxUE02TnFnbzRpY0h5?=
 =?utf-8?B?MThXVFJBSEg1a21YdWZmY1N2TVNqVzZSbDBSRks2SVd3MURJZHB4d21jeGcy?=
 =?utf-8?B?NkRYY05zVzl1dDZCbzJmMitWZFBVanB3M2REenE3NHhPMW5lSW1rVFhtT3VS?=
 =?utf-8?Q?fwnllmQ/aEcdBdml2tFoO/0/h?=
X-OriginatorOrg: asocscloud.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbfa9534-a05a-493c-c442-08dac7e05650
X-MS-Exchange-CrossTenant-AuthSource: DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2022 14:39:16.3893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 09a71e5b-e130-419f-bde2-1e8422f00aaa
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: trPQPJBsxOZS66Ss7svc3Nc7uaVQMkLAj3ka8qDoTEMoy0R18ZQOUX5FQFvhsYZ1BKPeYQv8PzqMwi9hkAXMrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3256
X-Mailman-Approved-At: Wed, 16 Nov 2022 16:26:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Asocs.onmicrosoft.com; 
 s=selector2-Asocs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dwvWTKdUKovYl5guN334mXfW7pVFwskR45VxUmTumyE=;
 b=QXC43tWRQSVjsIzShbme6xa8Wt01GtJD0a3gp7x7IzBBh6SXBftKfcCRgPkbMKopPSMgLqtro35CgU1zSYL7wgRiSfEmLR6gMOjwuGUCiOL89vPX4dqtbtvTqxHA/jos5rpdeL4ExmlLv9moL6wC03uyxAJpsLEktc5Yk7OXlGY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=Asocs.onmicrosoft.com
 header.i=@Asocs.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-Asocs-onmicrosoft-com header.b=QXC43tWR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=asocscloud.com;
Subject: [Intel-wired-lan] PTP hardware timestamping on E810 VF
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I wonder how can I enable PTP HW timestamping on E810 *VF*. It is 
supported on the PF, but looks like not on the VF. At the same time, 
ESXi manual says that it is supported on VFs as well 
(https://docs.vmware.com/en/VMware-Telco-Cloud-Automation/2.1.1/com.vmware.tca.userguide/GUID-57C099A3-78E7-4B94-BF54-AD0D6C2EF175.html)

Is it supported only on ESXi, but not on Linux? Any ideas?

# ethtool -T ens3f0  # <== PF
Time stamping parameters for ens3f0:
Capabilities:
	hardware-transmit
	software-transmit
	hardware-receive
	software-receive
	software-system-clock
	hardware-raw-clock
PTP Hardware Clock: 3
Hardware Transmit Timestamp Modes:
	off
	on
Hardware Receive Filter Modes:
	none
	all

# ethtool -T ens3f0v0  # <== VF
Time stamping parameters for ens3f0v0:
Capabilities:
	software-receive
	software-system-clock
PTP Hardware Clock: none
Hardware Transmit Timestamp Modes: none
Hardware Receive Filter Modes: none


Thanks,
Leonid.
___
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
