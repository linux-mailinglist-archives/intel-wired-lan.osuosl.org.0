Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A98D956E40
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 17:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5C4C405FD;
	Mon, 19 Aug 2024 15:09:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABlXTKGY3Mp6; Mon, 19 Aug 2024 15:09:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAB6E405FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724080151;
	bh=QRPnZgfuD04mlqn1AsHHKOM++TRQ9dP251PdCGyiwmk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yUiQ18CVB1TJkv48EcZLheiKhqFjBTlK2XWfj1AqOsJk2bl4oHP+lWxdGYa3O9gFu
	 ZD6rLEm4GfVNa7iCdD0y4kw/d7m29n50/EYR6n5EILCqG0O/CIBYc5f+g4T4uei0Hv
	 Okg4WpOAYXBDFmHQXlr3gop1CKZGWBGIJx3SWndmRIMc4PGnmfLm5CuQdSfkrI++NO
	 EkkrKrWCPtCRSVeFgqhDBGUTqE2gwkDme+hLR/J28Fkf+UysHbYiCSBYqAg4sfvGF7
	 9Z+T0qjPWAmp7BpAiS5RhtWYUqytFmMxq/fzEDR9sLSZxghUhrvJ9bjxLkt2/j8L6a
	 B4CxeVUPC27JQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAB6E405FB;
	Mon, 19 Aug 2024 15:09:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4E01BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 05:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55B99607B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 05:23:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69gTCSJRbo_l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 05:23:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.50;
 helo=mail-wm1-f50.google.com; envelope-from=jirislaby@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40F606058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40F606058B
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40F606058B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 05:23:46 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-428101fa30aso30905675e9.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 22:23:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724045024; x=1724649824;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :references:cc:to:from:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QRPnZgfuD04mlqn1AsHHKOM++TRQ9dP251PdCGyiwmk=;
 b=hmhfd4pwW24x2RnKVJrSUQ4T1/8BN114jYNI7bJH2ET8BxVnHgGUWk9y+Sk0hAl12K
 SHmvjxZf60tcfKQosRNgSgiKkR7WGR0qvvHnTYmGbBUMzT/ki8sIOOpSUfPuHC2zpGFY
 jP6bNDV78nT4zn16WqMXqKUsiz5XBJfISmqW6JNlq1jDyfpy9MG2GPk2stZImNGp0wpW
 f6UUbsO+E1zDJu0HceY/zG3yPHEKYulbLKuH2y9qLKNsgwBGnM/1a1ylbaeLLSKwXU4x
 cUXexaMaQ2h7qMxCYy46We3psMWE3s6V3ak9pA8zPOCykLBMdX95BdengxeXh2V084ss
 ZB0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXauFHjafHc1eOAh96Zr4p5J2Ut3cy2yhtbRG5eLTToUiBz3gQQGGaa1WOUVwYhkwKGuogz+TB88bhwVjwnDkYPjpp83dA1jPg3TpeDw6hkA==
X-Gm-Message-State: AOJu0YyfJ2gXrmOeE+iKwshdmZrkb7c+NwjWeTG1ct1IK2+Zt4HDP5LJ
 TZ2c2oig4C8QLY5wgd4rycGS+v+iQWUE2bao7cInbQ8xQ4gHRTwAWzRqpg==
X-Google-Smtp-Source: AGHT+IHKzVPlN+RRAyCEZScNVcdul0vfaAZE0h4JYP0WeGlRZ4xobxUDZoF2oj/4yb3KyKR8uZjxNA==
X-Received: by 2002:a05:600c:4692:b0:425:7bbf:fd07 with SMTP id
 5b1f17b1804b1-429ed7856b4mr71755305e9.5.1724045023749; 
 Sun, 18 Aug 2024 22:23:43 -0700 (PDT)
Received: from ?IPV6:2a0b:e7c0:0:107::aaaa:69? ([2a0b:e7c0:0:107::aaaa:69])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-371898aa229sm9438557f8f.88.2024.08.18.22.23.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Aug 2024 22:23:43 -0700 (PDT)
Message-ID: <782b7159-076a-4064-8333-69c454972b29@kernel.org>
Date: Mon, 19 Aug 2024 07:23:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jiri Slaby <jirislaby@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>
References: <60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org>
 <bd149809-f670-4b5d-a18a-f1f63624265f@kernel.org>
 <CAJZ5v0jrgC+cvjDfw+vQ1jyVz1oj28uTf9k+-Kk2EAPJj3VmdQ@mail.gmail.com>
 <6eac5c37-a5a8-4ccf-aef6-62a4a0bfcea0@jevklidu.cz>
 <95ef6fd9-6d86-40e2-9814-d1f671b2262d@kernel.org>
Content-Language: en-US
Autocrypt: addr=jirislaby@kernel.org; keydata=
 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
In-Reply-To: <95ef6fd9-6d86-40e2-9814-d1f671b2262d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 19 Aug 2024 15:09:08 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=kernel.org
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "Rafael J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 jesse.brandeburg@intel.com,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Petr Valenta <petr@jevklidu.cz>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19. 08. 24, 6:50, Jiri Slaby wrote:
> CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)

Bjorn,

I am confused by these changes:
==========================================
@@ -291,16 +288,13 @@ static int e1000_set_link_ksettings(struct 
net_device *net
dev,
          * duplex is forced.
          */
         if (cmd->base.eth_tp_mdix_ctrl) {
-               if (hw->phy.media_type != e1000_media_type_copper) {
-                       ret_val = -EOPNOTSUPP;
-                       goto out;
-               }
+               if (hw->phy.media_type != e1000_media_type_copper)
+                       return -EOPNOTSUPP;

                 if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
                     (cmd->base.autoneg != AUTONEG_ENABLE)) {
                         e_err("forcing MDI/MDI-X state is not supported 
when lin
k speed and/or duplex are forced\n");
-                       ret_val = -EINVAL;
-                       goto out;
+                       return -EINVAL;
                 }
         }

@@ -347,7 +341,6 @@ static int e1000_set_link_ksettings(struct 
net_device *netde
v,
         }

  out:
-       pm_runtime_put_sync(netdev->dev.parent);
         clear_bit(__E1000_RESETTING, &adapter->state);
         return ret_val;
  }
==========================================

So no more clear_bit(__E1000_RESETTING in the above fail paths. Is that 
intentional?

thanks,
-- 
js
suse labs

